import os
import tempfile
import unittest
from pathlib import Path

from prepare_ios_runner_storage import prepare, prune_stale


class RunnerStorageTest(unittest.TestCase):
    def test_private_outputs_use_unique_directory_without_replacing_existing(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp); workspace = root / 'workspace'; mount = root / 'volume'
            (workspace / 'app').mkdir(parents=True)
            (workspace / 'native/gnubg').mkdir(parents=True)
            mount.mkdir()
            result = prepare(workspace, mount, require_mounted=False, minimum_free=0)
            run = Path(result['BGB_BUILD_TEMP']).parent
            self.assertEqual(run.parent, mount)
            if os.name != 'nt':  # Windows reports no POSIX permission bits.
                self.assertEqual(run.stat().st_mode & 0o777, 0o700)
            self.assertEqual((workspace / 'app/build').resolve(), (run / 'app-build').resolve())
            self.assertEqual((workspace / 'native/gnubg/build').resolve(), (run / 'gnubg-build').resolve())
            with self.assertRaises(ValueError):
                prepare(workspace, mount, require_mounted=False, minimum_free=0)
            self.assertTrue(run.exists())

    def test_only_stale_run_directories_are_pruned(self):
        with tempfile.TemporaryDirectory() as tmp:
            mount = Path(tmp)
            old = mount / 'backgammon-buddy-ios-old'
            (old / 'cargo/readonly').mkdir(parents=True)
            (old / 'cargo/readonly/file').write_text('x')
            (old / 'cargo/readonly').chmod(0o500)
            live = mount / 'backgammon-buddy-ios-live'
            live.mkdir()
            unrelated = mount / 'other-project'
            unrelated.mkdir()
            stray = mount / 'backgammon-buddy-ios-file'
            stray.write_text('not a directory')
            hour = 3600
            now = max(p.lstat().st_mtime for p in (old, live, unrelated))
            os.utime(old, (now - 30 * hour, now - 30 * hour))
            os.utime(unrelated, (now - 30 * hour, now - 30 * hour))
            self.assertEqual(prune_stale(mount, 24 * hour, now=now), [old.name])
            self.assertFalse(old.exists())
            self.assertTrue(live.is_dir() and unrelated.is_dir() and stray.is_file())

    def test_rejects_nonmount_and_symlink(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp); link = root / 'link'; link.symlink_to(root, target_is_directory=True)
            with self.assertRaises(ValueError):
                prepare(root, link, require_mounted=False, minimum_free=0)
            with self.assertRaises(ValueError):
                prepare(root, root, require_mounted=True, minimum_free=0)
            with self.assertRaises(ValueError):
                prepare(root, root, require_mounted=False, minimum_free=10**30)


if __name__ == '__main__':
    unittest.main()

import tempfile
import unittest
from pathlib import Path

from prepare_ios_runner_storage import prepare


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
            self.assertEqual(run.stat().st_mode & 0o777, 0o700)
            self.assertEqual((workspace / 'app/build').resolve(), (run / 'app-build').resolve())
            self.assertEqual((workspace / 'native/gnubg/build').resolve(), (run / 'gnubg-build').resolve())
            with self.assertRaises(ValueError):
                prepare(workspace, mount, require_mounted=False, minimum_free=0)
            self.assertTrue(run.exists())

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

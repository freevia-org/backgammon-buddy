"""Encode native captures as opaque 8-bit sRGB PNG; never resize or paint pixels.

Requires Pillow with ImageCms. Capture raw PNGs with the integration driver,
then pass their directory and the store screenshot destination.
"""
import argparse
from io import BytesIO
from pathlib import Path
from PIL import Image, ImageCms


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    parser.add_argument('destination', type=Path)
    args = parser.parse_args()
    assert args.source.resolve() != args.destination.resolve(), 'Preserve raw captures separately'
    for path in sorted(args.source.rglob('*.png')):
        with Image.open(path) as image:
            if 'A' in image.getbands():
                assert image.getchannel('A').getextrema() == (255, 255), f'{path}: not fully opaque'
            profile = image.info.get('icc_profile')
            rgb = image.convert('RGB')
            srgb = ImageCms.createProfile('sRGB')
            if profile:
                rgb = ImageCms.profileToProfile(rgb, ImageCms.ImageCmsProfile(BytesIO(profile)),
                                               srgb, outputMode='RGB')
            target = args.destination / path.relative_to(args.source)
            target.parent.mkdir(parents=True, exist_ok=True)
            rgb.save(target, format='PNG', icc_profile=ImageCms.ImageCmsProfile(srgb).tobytes())
            print(f'{target}: {rgb.width}x{rgb.height}, RGB/sRGB, no alpha')


if __name__ == '__main__':
    main()

#!/usr/bin/env python3
# ---------------------------------------------------------------------------
#  get-fonts.py
#
#  This script downloads fonts needed by the style from various sources
#  Based on get-fonts.py from OSM-Carto.
#
#  Copyright 2012-2025 by OSM-Carto contributors
#  Copyright 2025 by Christoph Hormann <chris_hormann@gmx.de>
# ---------------------------------------------------------------------------
#  This file is part of the OSM-Carto alternative colors map style.
#
#  OSM-Carto alternative colors is an open design and free software project
#  You can use, modify and/or redistribute it under the terms of the
#  following licenses:
#
#  Design components of the project are subject to the Creative Commons
#  Attribution ShareAlike 4.0 (CC BY-SA 4.0) License.
#
#  Software components of the project are subject to the GNU Affero General
#  Public License published by the Free Software Foundation, either
#  version 3 of the License, or (at your option) any later version.
#
#  OSM-Carto alternative colors is distributed in the hope that it will be
#  useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
#  General Public License and the Creative Commons Attribution ShareAlike
#  4.0 (CC BY-SA 4.0) License for more details.
#
#  You should have received a copy of the Creative Commons Attribution
#  ShareAlike 4.0 (CC BY-SA 4.0) License along with OSM-Carto alternative
#  colors. If not, see
#  <https://creativecommons.org/licenses/by-sa/4.0/legalcode>.
#
#  You should have also received a copy of the GNU Affero General Public
#  License. If not, see <https://www.gnu.org/licenses/>.
# ---------------------------------------------------------------------------
# This script downloads several Noto fonts from https://github.com/notofonts/noto-fonts
# That repo was archived in 2023 and is no longer updated.
# Additional fonts can be found on https://notofonts.github.io

import os
import requests
import tempfile
import argparse
import shutil
import zipfile

import logging

FONTDIR = os.environ.get("FONTDIR", "./fonts")

# Fonts to download in regular, bold, and italic
REGULAR_BOLD_ITALIC = ["NotoSans"]

# Fonts to download in regular and bold
REGULAR_BOLD = [
    "NotoSansAdlamUnjoined",
    "NotoSansArabicUI",
    "NotoSansArmenian",
    "NotoSansBalinese",
    "NotoSansBamum",
    "NotoSansBengaliUI",
    "NotoSansCanadianAboriginal",
    "NotoSansCham",
    "NotoSansCherokee",
    "NotoSansDevanagariUI",
    "NotoSansEthiopic",
    "NotoSansGeorgian",
    "NotoSansGujaratiUI",
    "NotoSansGurmukhiUI",
    "NotoSansHebrew",
    "NotoSansJavanese",
    "NotoSansKannadaUI",
    "NotoSansKayahLi",
    "NotoSansKhmerUI",
    "NotoSansLaoUI",
    "NotoSansLisu",
    "NotoSansMalayalamUI",
    "NotoSansMyanmarUI",
    "NotoSansOlChiki",
    "NotoSansOriyaUI",
    "NotoSansSinhalaUI",
    "NotoSansSundanese",
    "NotoSansSymbols",
    "NotoSansTaiTham",
    "NotoSansTamilUI",
    "NotoSansTeluguUI",
    "NotoSansThaana",
    "NotoSansThaiUI",
    "NotoSerifTibetan",
]

# Fonts to download regular and black, but no bold
REGULAR_BLACK = ["NotoSansSyriac"]

# Fonts to download only regular
REGULAR = [
    "NotoSansBatak",
    "NotoSansBuginese",
    "NotoSansBuhid",
    "NotoSansChakma",
    "NotoSansCoptic",
    "NotoSansHanunoo",
    "NotoSansLepcha",
    "NotoSansLimbu",
    "NotoSansMandaic",
    "NotoSansMongolian",
    "NotoSansNewTaiLue",
    "NotoSansNKo",
    "NotoSansOsage",
    "NotoSansOsmanya",
    "NotoSansSamaritan",
    "NotoSansSaurashtra",
    "NotoSansShavian",
    "NotoSansSymbols2",
    "NotoSansTagalog",
    "NotoSansTagbanwa",
    "NotoSansTaiLe",
    "NotoSansTaiViet",
    "NotoSansTifinagh",
    "NotoSansVai",
    "NotoSansYi",
]


# Attempt to download the font from repos in this order
def findFontUrls(fontName, modifier):
    return [
        f"https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/{fontName}/{fontName}-{modifier}.ttf",
        # currently only sourcing from one repo
    ]


def downloadToFile(overwrite, urls, destination=None, dir=FONTDIR):

    if destination is None:
        destination = os.path.basename(urls[0])

    if not(overwrite):
        if (os.path.exists(os.path.join(dir, destination))):
            logging.info("Skipping %s because font file already exists" % destination)
            return


    headers = {"User-Agent": "get-fonts.py/osm-carto"}

    try:
        logging.info("Downloading %s..." % urls[0])
        r = requests.get(urls[0], headers=headers)
        if r.status_code != 200:
            if len(urls) > 1:
                warnings.warn(f"Failed to download {urls[0]}, retrying with next font source")
                downloadToFile(overwrite,urls[1:], destination, dir=dir)
            else:
                raise Exception
        with open(os.path.join(dir, destination), "wb") as f:
            logging.info("Writing %s..." % destination)
            f.write(r.content)
    except:
        raise Exception(f"Failed to download {urls}")


def main():
    # parse options
    parser = argparse.ArgumentParser(
        description="Download font files needed by the style")

    parser.add_argument("--no-update", action="store_true",
                        help="Don't download any fonts where files already exist")

    parser.add_argument("--carto", action="store_true",
                        help="Download only fonts also used by OSM-Carto")
    parser.add_argument("--ac", action="store_true",
                        help="Download only fonts specific to the AC-Style")

    parser.add_argument("-v", "--verbose", action="store_true",
                        help="Be more verbose. Overrides -q")
    parser.add_argument("-q", "--quiet", action="store_true",
                        help="Only report serious problems")

    opts = parser.parse_args()

    if opts.verbose:
        logging.basicConfig(level=logging.DEBUG)
    elif opts.quiet:
        logging.basicConfig(level=logging.WARNING)
    else:
        logging.basicConfig(level=logging.INFO)

    overwrite = True

    if opts.no_update:
        logging.info("Not updating existing files.")
        overwrite = False

    try:
        os.mkdir(FONTDIR)
    except FileExistsError:
        logging.warning("Font directory already exists.")

    if not(opts.ac):

        logging.info("Downloading fonts for OSM-Carto...")

        for font in REGULAR_BOLD + REGULAR_BOLD_ITALIC + REGULAR_BLACK + REGULAR:
            regularFontUrls = findFontUrls(font, "Regular")
            downloadToFile(overwrite, regularFontUrls, f"{font}-Regular.ttf")

            if (font in REGULAR_BOLD) or (font in REGULAR_BOLD_ITALIC):
                boldFontUrls = findFontUrls(font, "Bold")
                downloadToFile(overwrite, boldFontUrls, f"{font}-Bold.ttf")

            if font in REGULAR_BOLD_ITALIC:
                italicFontUrls = findFontUrls(font, "Italic")
                downloadToFile(overwrite, italicFontUrls, f"{font}-Italic.ttf")

            if font in REGULAR_BLACK:
                blackFontUrls = findFontUrls(font, "Black")
                downloadToFile(overwrite, blackFontUrls, f"{font}-Black.ttf")

        # Other noto fonts which don't follow the URL pattern above

        # CJK fonts
        downloadToFile(overwrite,
            [
                "https://github.com/notofonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf"
            ],
            "NotoSansCJKjp-Regular.otf",
        )
        downloadToFile(overwrite,
            [
                "https://github.com/notofonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Bold.otf"
            ],
            "NotoSansCJKjp-Bold.otf",
        )

        # Fonts in zipfiles need a temporary directory
        TMPDIR = tempfile.mkdtemp(prefix="get-fonts.")

        # Noto Emoji B&W isn't available as a separate download, so we need to download the package and unzip it
        if overwrite or not(os.path.exists(os.path.join(FONTDIR, "NotoEmoji-Regular.ttf"))) or not(os.path.exists(os.path.join(FONTDIR, "NotoEmoji-Bold.ttf"))):
            downloadToFile(overwrite,
                ["https://archive.org/download/noto-emoji/Noto_Emoji.zip"],
                "Noto_Emoji.zip",
                dir=TMPDIR,
            )
            emojiPath = os.path.join(TMPDIR, "Noto_Emoji.zip")
            if (os.path.exists(emojiPath)):
                emojiExtract = ["NotoEmoji-Regular.ttf", "NotoEmoji-Bold.ttf"]
                with zipfile.ZipFile(emojiPath, "r") as zip_ref:
                    for file in emojiExtract:
                        source = zip_ref.getinfo(f"static/{file}")
                        zip_ref.extract(source, FONTDIR)
                        # move from FONTDIR/static/x to overwrite FONTDIR/x
                        unzipSrc = os.path.join(FONTDIR, file)
                        if os.path.exists(unzipSrc):
                            os.remove(unzipSrc)
                        shutil.move(os.path.join(FONTDIR, "static", file), FONTDIR)

        if overwrite or not(os.path.exists(os.path.join(FONTDIR, "HanaMinA.ttf"))) or not(os.path.exists(os.path.join(FONTDIR, "HanaMinB.ttf"))):
            downloadToFile(overwrite,
                ["https://mirrors.dotsrc.org/osdn/hanazono-font/68253/hanazono-20170904.zip"],
                "hanazono.zip",
                dir=TMPDIR,
            )
            hanazonoPath = os.path.join(TMPDIR, "hanazono.zip")
            if (os.path.exists(hanazonoPath)):
                with zipfile.ZipFile(hanazonoPath, "r") as zip_ref:
                    for file in ["HanaMinA.ttf", "HanaMinB.ttf"]:
                        source = zip_ref.getinfo(file)
                        zip_ref.extract(source, FONTDIR)

    # ac-style specific fonts
    if not(opts.carto):

        logging.info("Downloading fonts for th AC-Style...")

        # CJK fonts with different defaults
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/OTF/Japanese/NotoSansCJKjp-Bold.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/OTF/Korean/NotoSansCJKkr-Regular.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/OTF/Korean/NotoSansCJKkr-Bold.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/OTF/SimplifiedChinese/NotoSansCJKsc-Regular.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/OTF/SimplifiedChinese/NotoSansCJKsc-Bold.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/OTF/TraditionalChinese/NotoSansCJKtc-Regular.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/OTF/TraditionalChinese/NotoSansCJKtc-Bold.otf"])

        # CJK fonts with only the specified script variant
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/SubsetOTF/JP/NotoSansJP-Regular.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/SubsetOTF/JP/NotoSansJP-Bold.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/SubsetOTF/KR/NotoSansKR-Regular.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/SubsetOTF/KR/NotoSansKR-Bold.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/SubsetOTF/SC/NotoSansSC-Regular.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/SubsetOTF/SC/NotoSansSC-Bold.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/SubsetOTF/TC/NotoSansTC-Regular.otf"])
        downloadToFile(overwrite,["https://github.com/notofonts/noto-cjk/raw/refs/heads/main/Sans/SubsetOTF/TC/NotoSansTC-Bold.otf"])

        # Noto Nastaliq Urdu
        downloadToFile(overwrite,["https://notofonts.github.io/nastaliq/fonts/NotoNastaliqUrdu/full/ttf/NotoNastaliqUrdu-Regular.ttf"])
        downloadToFile(overwrite,["https://notofonts.github.io/nastaliq/fonts/NotoNastaliqUrdu/full/ttf/NotoNastaliqUrdu-Bold.ttf"])

        # variant of Acari Sans (https://fontlibrary.org/en/font/acari-sans)
        # manually edited in FontForge to only feature Bulgarian Cyrillic
        # see: https://github.com/notofonts/latin-greek-cyrillic/issues/187
        # subject to SIL Open Font License
        # http://scripts.sil.org/OFL
        downloadToFile(overwrite,["https://imagico.de/files/AcariSansBG-Regular.ttf"])
        downloadToFile(overwrite,["https://imagico.de/files/AcariSansBG-Bold.ttf"])
        downloadToFile(overwrite,["https://imagico.de/files/AcariSansBG-Italic.ttf"])

    # clean up tmp directories
    shutil.rmtree(TMPDIR)
    fontdir_static = os.path.join(FONTDIR, "static")
    if os.path.exists(fontdir_static):
        shutil.rmtree(fontdir_static)

if __name__ == '__main__':
    main()

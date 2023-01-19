#!/bin/sh
set -e

FONTDIR="./fonts"

mkdir -p "${FONTDIR}"

# download filename url
download() {
  ## Download if newer, and if curl fails, clean up and exit
  curl --fail --compressed -A "get-fonts.sh/osm-carto" -o "$1" -z "$1" -L "$2" || { echo "Failed to download $1 $2"; rm -f "$1"; exit 1; }
}

# TTF Hinted Noto Fonts

# Fonts available in regular, bold, and italic
REGULAR_BOLD_ITALIC="NotoSans"

# Fonts available in regular and bold
REGULAR_BOLD="NotoSansAdlamUnjoined
NotoSansArabicUI
NotoSansArmenian
NotoSansBalinese
NotoSansBamum
NotoSansBengaliUI
NotoSansCanadianAboriginal
NotoSansCham
NotoSansCherokee
NotoSansDevanagariUI
NotoSansEthiopic
NotoSansGeorgian
NotoSansGujaratiUI
NotoSansGurmukhiUI
NotoSansHebrew
NotoSansJavanese
NotoSansKannadaUI
NotoSansKayahLi
NotoSansKhmerUI
NotoSansLaoUI
NotoSansLisu
NotoSansMalayalamUI
NotoSansMyanmarUI
NotoSansOlChiki
NotoSansOriyaUI
NotoSansSinhalaUI
NotoSansSundanese
NotoSansSymbols
NotoSansTaiTham
NotoSansTamilUI
NotoSansTeluguUI
NotoSansThaana
NotoSansThaiUI
NotoSerifTibetan"

# Fonts with regular and black, but no bold
REGULAR_BLACK="NotoSansSyriac"

# Fonts only available in regular
REGULAR="NotoSansBatak
NotoSansBuginese
NotoSansBuhid
NotoSansChakma
NotoSansCoptic
NotoSansHanunoo
NotoSansLepcha
NotoSansLimbu
NotoSansMandaic
NotoSansMongolian
NotoSansNewTaiLue
NotoSansNKo
NotoSansOsage
NotoSansOsmanya
NotoSansSamaritan
NotoSansSaurashtra
NotoSansShavian
NotoSansSymbols2
NotoSansTagalog
NotoSansTagbanwa
NotoSansTaiLe
NotoSansTaiViet
NotoSansTifinagh
NotoSansVai
NotoSansYi"

# Fonts in zipfiles need a temporary directory
TMPDIR=$(mktemp -d -t get-fonts.XXXXXXXXX)
trap "rm -rf ${TMPDIR} ${FONTDIR}/static" EXIT

# Download the fonts in the lists above

if [ "$1" = "all" ] ; then

  for font in $REGULAR_BOLD_ITALIC; do
    regular="$font-Regular.ttf"
    bold="$font-Bold.ttf"
    italic="$font-Italic.ttf"
    download "${FONTDIR}/${regular}" "https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/${font}/${regular}"
    download "${FONTDIR}/${bold}" "https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/${font}/${bold}"
    download "${FONTDIR}/${italic}" "https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/${font}/${italic}"
  done

  for font in $REGULAR_BOLD; do
    regular="$font-Regular.ttf"
    bold="$font-Bold.ttf"
    download "${FONTDIR}/${regular}" "https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/${font}/${regular}"
    download "${FONTDIR}/${bold}" "https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/${font}/${bold}"
  done

  for font in $REGULAR_BLACK; do
    regular="$font-Regular.ttf"
    black="$font-Black.ttf"
    download "${FONTDIR}/${regular}" "https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/${font}/${regular}"
    download "${FONTDIR}/${black}" "https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/${font}/${black}"
  done

  for font in $REGULAR; do
    regular="$font-Regular.ttf"
    download "${FONTDIR}/${regular}" "https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/${font}/${regular}"
  done

  # Other noto fonts which don't follow the URL pattern above
  download "${FONTDIR}/NotoSansCJKjp-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf"
  download "${FONTDIR}/NotoSansCJKjp-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Bold.otf"

  # Noto Emoji B&W isn't available as a separate download, so we need to download the package and unzip it
  curl --fail -A "get-fonts.sh/osm-carto" -o "${TMPDIR}/Noto_Emoji.zip" -L 'https://fonts.google.com/download?family=Noto%20Emoji'

  unzip -oqq "${TMPDIR}/Noto_Emoji.zip" static/NotoEmoji-Regular.ttf static/NotoEmoji-Bold.ttf -d "${FONTDIR}"
  mv "${FONTDIR}/static/NotoEmoji-Regular.ttf" "${FONTDIR}"
  mv "${FONTDIR}/static/NotoEmoji-Bold.ttf" "${FONTDIR}"

  curl --fail -A "get-fonts.sh/osm-carto" -o "${TMPDIR}/hanazono.zip" -L 'https://osdn.net/frs/redir.php?f=hanazono-font%2F68253%2Fhanazono-20170904.zip'

  unzip -oqq "${TMPDIR}/hanazono.zip" HanaMinA.ttf HanaMinB.ttf -d "${FONTDIR}"

fi

# ac-style specific fonts

# CJK fonts with different defaults
download "${FONTDIR}/NotoSansCJKjp-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf"
download "${FONTDIR}/NotoSansCJKjp-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Bold.otf"
download "${FONTDIR}/NotoSansCJKkr-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Korean/NotoSansCJKkr-Regular.otf"
download "${FONTDIR}/NotoSansCJKkr-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Korean/NotoSansCJKkr-Bold.otf"
download "${FONTDIR}/NotoSansCJKsc-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/SimplifiedChinese/NotoSansCJKsc-Regular.otf"
download "${FONTDIR}/NotoSansCJKsc-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/SimplifiedChinese/NotoSansCJKsc-Bold.otf"
download "${FONTDIR}/NotoSansCJKtc-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChinese/NotoSansCJKtc-Regular.otf"
download "${FONTDIR}/NotoSansCJKtc-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChinese/NotoSansCJKtc-Bold.otf"

# CJK fonts with only the specified script variant
download "${FONTDIR}/NotoSansJP-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/SubsetOTF/JP/NotoSansJP-Regular.otf"
download "${FONTDIR}/NotoSansJP-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/SubsetOTF/JP/NotoSansJP-Bold.otf"
download "${FONTDIR}/NotoSansKR-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/SubsetOTF/KR/NotoSansKR-Regular.otf"
download "${FONTDIR}/NotoSansKR-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/SubsetOTF/KR/NotoSansKR-Bold.otf"
download "${FONTDIR}/NotoSansSC-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/SubsetOTF/SC/NotoSansSC-Regular.otf"
download "${FONTDIR}/NotoSansSC-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/SubsetOTF/SC/NotoSansSC-Bold.otf"
download "${FONTDIR}/NotoSansTC-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/SubsetOTF/TC/NotoSansTC-Regular.otf"
download "${FONTDIR}/NotoSansTC-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/SubsetOTF/TC/NotoSansTC-Bold.otf"

# Noto Nastaliq Urdu
download "${FONTDIR}/NotoNastaliqUrdu-Regular.ttf" "https://notofonts.github.io/nastaliq/fonts/NotoNastaliqUrdu/full/ttf/NotoNastaliqUrdu-Regular.ttf"
download "${FONTDIR}/NotoNastaliqUrdu-Bold.ttf" "https://notofonts.github.io/nastaliq/fonts/NotoNastaliqUrdu/full/ttf/NotoNastaliqUrdu-Bold.ttf"

# variant of Acari Sans (https://fontlibrary.org/en/font/acari-sans)
# manually edited in FontForge to only feature Bulgarian Cyrillic
# see: https://github.com/notofonts/latin-greek-cyrillic/issues/187
# subject to SIL Open Font License
# http://scripts.sil.org/OFL
download "${FONTDIR}/AcariSansBG-Regular.ttf" "https://imagico.de/files/AcariSansBG-Regular.ttf"
download "${FONTDIR}/AcariSansBG-Bold.ttf" "https://imagico.de/files/AcariSansBG-Bold.ttf"
download "${FONTDIR}/AcariSansBG-Italic.ttf" "https://imagico.de/files/AcariSansBG-Italic.ttf"

echo "Done."


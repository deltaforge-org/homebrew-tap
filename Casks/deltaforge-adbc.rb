cask "deltaforge-adbc" do
  version "1.2.0"
  sha256 "e54995fcd16e86a1c46610296da653cd5fafd43a896f906b3cfe9805d5867dd7"
  url "https://github.com/deltaforge-org/delta-forge-adbc/releases/download/v1.2.0/deltaforge-adbc-1.2.0-macos-arm64.pkg"
  name "DeltaForge ADBC Driver"
  desc "ADBC Arrow-native driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/adbc"
  pkg "deltaforge-adbc-1.2.0-macos-arm64.pkg"
  uninstall pkgutil: "org.deltaforge.adbc"
end

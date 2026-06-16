cask "deltaforge-adbc" do
  version "1.0.610"
  sha256 "6f2ae149e2b5c17d72b1f3d618da8260cc34665669afc66b57d5a0f10881dfc0"
  url "https://github.com/deltaforge-org/delta-forge-adbc/releases/download/v1.0.610/deltaforge-adbc-1.0.610-macos-arm64.pkg"
  name "DeltaForge ADBC Driver"
  desc "ADBC Arrow-native driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/adbc"
  pkg "deltaforge-adbc-1.0.610-macos-arm64.pkg"
  uninstall pkgutil: "org.deltaforge.adbc"
end

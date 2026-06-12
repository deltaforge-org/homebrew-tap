cask "deltaforge-adbc" do
  version "1.0.5"
  sha256 "678112ee9cd87a5a82f709ccf5ea5e747b773ba49f81ffe31dd59bacdf920973"
  url "https://github.com/deltaforge-org/delta-forge-adbc/releases/download/v1.0.5/deltaforge-adbc-1.0.5-macos-arm64.pkg"
  name "DeltaForge ADBC Driver"
  desc "ADBC Arrow-native driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/adbc"
  pkg "deltaforge-adbc-1.0.5-macos-arm64.pkg"
  uninstall pkgutil: "org.deltaforge.adbc"
end

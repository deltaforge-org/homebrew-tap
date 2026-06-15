cask "deltaforge-adbc" do
  version "1.0.6"
  sha256 "8f7c33a8b88ed3939ca7fa605092e841d0940935bc645e5ed9ed6560f1f9f84d"
  url "https://github.com/deltaforge-org/delta-forge-adbc/releases/download/v1.0.6/deltaforge-adbc-1.0.6-macos-arm64.pkg"
  name "DeltaForge ADBC Driver"
  desc "ADBC Arrow-native driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/adbc"
  pkg "deltaforge-adbc-1.0.6-macos-arm64.pkg"
  uninstall pkgutil: "org.deltaforge.adbc"
end

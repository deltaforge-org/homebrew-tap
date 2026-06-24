cask "deltaforge-adbc" do
  version "1.0.8"
  sha256 "97ef6ebebe2bf3a5dc6a3a4f17e571845312055e7798f87ee75d3968e7a17dc4"
  url "https://github.com/deltaforge-org/delta-forge-adbc/releases/download/v1.0.8/deltaforge-adbc-1.0.8-macos-arm64.pkg"
  name "DeltaForge ADBC Driver"
  desc "ADBC Arrow-native driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/adbc"
  pkg "deltaforge-adbc-1.0.8-macos-arm64.pkg"
  uninstall pkgutil: "org.deltaforge.adbc"
end

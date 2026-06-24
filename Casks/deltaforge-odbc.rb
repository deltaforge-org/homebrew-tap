cask "deltaforge-odbc" do
  version "1.0.8"
  sha256 "4483f825fe216c44f3d1a6bc53e0a33ae66a883dde0d85ecf5db9abded739519"
  url "https://github.com/deltaforge-org/delta-forge-odbc/releases/download/v1.0.8/deltaforge-odbc-1.0.8-macos-universal.pkg"
  name "DeltaForge ODBC Driver"
  desc "ODBC 3.80 driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/odbc"
  pkg "deltaforge-odbc-1.0.8-macos-universal.pkg"
  uninstall pkgutil: "org.deltaforge.odbc"
end

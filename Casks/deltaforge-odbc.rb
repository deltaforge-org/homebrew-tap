cask "deltaforge-odbc" do
  version "1.2.0"
  sha256 "602d34e1089c6f4f646c8cbb98b051f7b98d9c4fd1dd9d3bf636219ced212d42"
  url "https://github.com/deltaforge-org/delta-forge-odbc/releases/download/v1.2.0/deltaforge-odbc-1.2.0-macos-universal.pkg"
  name "DeltaForge ODBC Driver"
  desc "ODBC 3.80 driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/odbc"
  pkg "deltaforge-odbc-1.2.0-macos-universal.pkg"
  uninstall pkgutil: "org.deltaforge.odbc"
end

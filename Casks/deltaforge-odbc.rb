cask "deltaforge-odbc" do
  version "1.0.5"
  sha256 "8a83aa300aa48fc23308cf9781ad4aaef227faa6e71485f5b021662e74eba1f5"
  url "https://github.com/deltaforge-org/delta-forge-odbc/releases/download/v1.0.5/deltaforge-odbc-1.0.5-macos-universal.pkg"
  name "DeltaForge ODBC Driver"
  desc "ODBC 3.80 driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/odbc"
  pkg "deltaforge-odbc-1.0.5-macos-universal.pkg"
  uninstall pkgutil: "org.deltaforge.odbc"
end

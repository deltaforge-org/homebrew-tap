cask "deltaforge-odbc" do
  version "1.0.6"
  sha256 "fb82f8c7c8905f5ea1d2f96c4578d9bf737f8ebcff60db02b942b6959c9ec50e"
  url "https://github.com/deltaforge-org/delta-forge-odbc/releases/download/v1.0.6/deltaforge-odbc-1.0.6-macos-universal.pkg"
  name "DeltaForge ODBC Driver"
  desc "ODBC 3.80 driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/odbc"
  pkg "deltaforge-odbc-1.0.6-macos-universal.pkg"
  uninstall pkgutil: "org.deltaforge.odbc"
end

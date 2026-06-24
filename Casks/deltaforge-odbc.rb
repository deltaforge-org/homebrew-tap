cask "deltaforge-odbc" do
  version "1.0.8"
  sha256 "d9c74472154185f95e37c3e2bca1f75573b7fcc3e42eefd32e3550a25348580f"
  url "https://github.com/deltaforge-org/delta-forge-odbc/releases/download/v1.0.8/deltaforge-odbc-1.0.8-macos-universal.pkg"
  name "DeltaForge ODBC Driver"
  desc "ODBC 3.80 driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/odbc"
  pkg "deltaforge-odbc-1.0.8-macos-universal.pkg"
  uninstall pkgutil: "org.deltaforge.odbc"
end

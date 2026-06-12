cask "deltaforge-odbc" do
  version "1.0.5"
  sha256 "c583d5a9f8f6c328b14cdcea26cface2bd2acc1f00bd706ecf6aa7933b51b8e6"
  url "https://github.com/deltaforge-org/delta-forge-odbc/releases/download/v1.0.5/deltaforge-odbc-1.0.5-macos-universal.pkg"
  name "DeltaForge ODBC Driver"
  desc "ODBC 3.80 driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/odbc"
  pkg "deltaforge-odbc-1.0.5-macos-universal.pkg"
  uninstall pkgutil: "org.deltaforge.odbc"
end

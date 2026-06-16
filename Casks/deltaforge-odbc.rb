cask "deltaforge-odbc" do
  version "1.0.610"
  sha256 "de24e172020c3df4ec4bb90d13f3596445cee5c860b5aea26dae4e744bf6cc15"
  url "https://github.com/deltaforge-org/delta-forge-odbc/releases/download/v1.0.610/deltaforge-odbc-1.0.610-macos-universal.pkg"
  name "DeltaForge ODBC Driver"
  desc "ODBC 3.80 driver for DeltaForge Delta Lake and Iceberg tables"
  homepage "https://deltaforge.org/odbc"
  pkg "deltaforge-odbc-1.0.610-macos-universal.pkg"
  uninstall pkgutil: "org.deltaforge.odbc"
end

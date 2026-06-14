cask "deltaforge-platform" do
  version "1.0.6"

  on_arm do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-1.0.6-macos-arm64.dmg"
    sha256 "7c449641f29edaa1a8e4744d0d9976f0c9e3226c9b83e39fc8f71fe020089f9d"
  end
  on_intel do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-1.0.6-macos-x64.dmg"
    sha256 "bfe7c450f80bc0e71b18a56aff0df42d2875f69f58e5233aa997191bf7e0c1d8"
  end

  name "DeltaForge Platform"
  desc "Delta Lake and Iceberg platform: run SQL, pipelines, Cypher graphs"
  homepage "https://deltaforge.org"

  app "DeltaForge.app"

  zap trash: [
    "~/Library/Application Support/delta-forge",
    "~/Library/Preferences/org.deltaforge.plist",
    "~/Library/Caches/org.deltaforge",
  ]
end

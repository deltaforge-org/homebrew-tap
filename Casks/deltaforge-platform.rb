cask "deltaforge-platform" do
  version "1.0.6"

  on_arm do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-1.0.6-macos-arm64.dmg"
    sha256 "69457a7c081a853c3912a1838ab2c3b345294bcf49013ef411a0d86ee27520ef"
  end
  on_intel do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-1.0.6-macos-x64.dmg"
    sha256 "1bfb5d3d99729056003665d6181dbc13c5efc32828a0f7aaf066dfb9fad763c5"
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

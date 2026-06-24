cask "deltaforge-platform" do
  version "1.0.8"

  on_arm do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.8/deltaforge-1.0.8-macos-arm64.dmg"
    sha256 "6822b8aec1213aec0aaa5b5c57615a8036cd4aeeea7ff74ca5177aba83cfed2f"
  end
  on_intel do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.8/deltaforge-1.0.8-macos-x64.dmg"
    sha256 "2a1faa8ec17ca927d130767903571d6a3b2707ea08640fb0691f1c4940e9ac9e"
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

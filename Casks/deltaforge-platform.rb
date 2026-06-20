cask "deltaforge-platform" do
  version "1.0.7"

  on_arm do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.7/deltaforge-1.0.7-macos-arm64.dmg"
    sha256 "a8d7053b96c18b448d93d60167290a29beda63f1faaf3a37d4cf81a2a69fd987"
  end
  on_intel do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.7/deltaforge-1.0.7-macos-x64.dmg"
    sha256 "45c2154744997f70bd72caf53be0f6cec72407bc60d02a391c4c5e8855642f8c"
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

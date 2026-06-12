cask "deltaforge-platform" do
  version "1.0.5"

  on_arm do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.5/deltaforge-1.0.5-macos-arm64.dmg"
    sha256 "9e635ee213f7535b836ae783edf2b4de8ba909c8bd76ab6e04e6291eaf4647a1"
  end
  on_intel do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.5/deltaforge-1.0.5-macos-x64.dmg"
    sha256 "b587ab8f3ebbf0d8006d02697a261cfbd87a817231d86d5e5e1bf56061feb19d"
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

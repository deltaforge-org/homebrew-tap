cask "deltaforge-platform" do
  version "1.2.0"

  on_arm do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.2.0/deltaforge-1.2.0-macos-arm64.dmg"
    sha256 "142fb57913f084089c42e25db99e9791e7a627bec6a1944fe92a78a9c656428e"
  end
  on_intel do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.2.0/deltaforge-1.2.0-macos-x64.dmg"
    sha256 "6a3b7da25b1a2576840ccf716c4c0f43dc58f2e6b6689edcc72e803e52188bfb"
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

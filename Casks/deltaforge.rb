cask "deltaforge" do
  version "1.0.4"

  on_arm do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-1.0.4-macos-arm64.dmg"
    sha256 "6e5700014babea3c001c41b4e5d5f17fba00e257ce75dc9f17036550957dfcf0"
  end
  on_intel do
    url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-1.0.4-macos-x64.dmg"
    sha256 "3eeb8782370d4bfb6a4584907d5755406adeaea284a5e26f409ee54c4a061ed9"
  end

  name "DeltaForge"
  desc "Delta Lake and Iceberg workbench: run SQL, pipelines, Cypher graphs"
  homepage "https://deltaforge.org"

  app "DeltaForge.app"

  zap trash: [
    "~/Library/Application Support/delta-forge",
    "~/Library/Preferences/org.deltaforge.plist",
    "~/Library/Caches/org.deltaforge",
  ]
end

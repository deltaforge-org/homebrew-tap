class DeltaforgeCli < Formula
  desc "Delta Forge command-line interface"
  homepage "https://deltaforge.org"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-cli-1.0.1-macos-arm64.tar.gz"
      sha256 "2a4aeef37498b50e58c60a692c8e6f4d9f3faa63c22ea0432ed500199e0cb87f"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-cli-1.0.1-macos-x64.tar.gz"
      sha256 "952573a4f9a67ce42239ac2253d280f1e2213ddbd97b579680df008357070cee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-cli-1.0.1-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-cli-1.0.1-linux-x64.tar.gz"
      sha256 "1c677b012ff5ee999255340ae47c0a6df33aaf581703dedab85c2b818ccbeeca"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

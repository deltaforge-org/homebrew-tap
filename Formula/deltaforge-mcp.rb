class DeltaforgeMcp < Formula
  desc "Delta Forge Model Context Protocol server"
  homepage "https://deltaforge.org"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-mcp-1.0.2-macos-arm64.tar.gz"
      sha256 "47eca186e3a57268555837818b4121cc306310054907b14947eb33226ba2e2d8"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-mcp-1.0.2-macos-x64.tar.gz"
      sha256 "1eff73961e02a126e18fc52ae89d763b84f8fff2c1cb2c770a6543c48354bbc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-mcp-1.0.2-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-mcp-1.0.2-linux-x64.tar.gz"
      sha256 "d69b6d555c6e96b51144c44c5d76ac40db140514d8abbd15b27d655168b6381f"
    end
  end

  def install
    bin.install "deltaforge-mcp"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-mcp --version 2>&1", 0..1)
  end
end

class DeltaforgeMcp < Formula
  desc "DeltaForge Model Context Protocol server"
  homepage "https://deltaforge.org"
  version "1.0.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-mcp-1.0.4-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-mcp-1.0.4-macos-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-mcp-1.0.4-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-mcp-1.0.4-linux-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "deltaforge-mcp"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-mcp --version 2>&1", 0..1)
  end
end

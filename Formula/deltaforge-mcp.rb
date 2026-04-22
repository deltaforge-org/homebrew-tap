class DeltaforgeMcp < Formula
  desc "Delta Forge Model Context Protocol server"
  homepage "https://deltaforge.org"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-mcp-1.0.1-macos-arm64.tar.gz"
      sha256 "f466f814d19569a053f4b1903cfbd572215cb5128ac0bc87a11a5e7c248afbe5"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-mcp-1.0.1-macos-x64.tar.gz"
      sha256 "bc16e12afa5e313404db82287e97fa4ed2c0e2233b15ec1d19d44b76db4b794d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-mcp-1.0.1-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-mcp-1.0.1-linux-x64.tar.gz"
      sha256 "a3a75a29ac06924fd881f5ed639e4937f412ad5ebabe142f60e4e49495d99506"
    end
  end

  def install
    bin.install "deltaforge-mcp"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-mcp --version 2>&1", 0..1)
  end
end

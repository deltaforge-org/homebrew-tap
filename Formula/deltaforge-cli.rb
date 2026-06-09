class DeltaforgeCli < Formula
  desc "Query Delta Lake and Apache Iceberg in place from the terminal, no cluster"
  homepage "https://deltaforge.org"
  version "1.0.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-cli-1.0.4-macos-arm64.tar.gz"
      sha256 "9f692f62e5631bfb4356f7f6cabdfdc76f4a5c038bf6a575f3b131f76485bb85"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-cli-1.0.4-macos-x64.tar.gz"
      sha256 "66a6afb4a9e33e05c751d5c07940b4179e219032ab9f8e2706088f80f1d6887c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-cli-1.0.4-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-cli-1.0.4-linux-x64.tar.gz"
      sha256 "d99e84b1a3cafcbc67a2322631251823ed802743a6fd99a69e11ea3c911572ee"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

class DeltaforgeCli < Formula
  desc "Query Delta Lake and Apache Iceberg in place from the terminal, no cluster"
  homepage "https://deltaforge.org"
  version "1.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.2.0/deltaforge-cli-1.2.0-macos-arm64.tar.gz"
      sha256 "3daeddd8b1bd3959c1db41398662d7ec5be2dd543bfacf5772929bcd14e61ac7"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.2.0/deltaforge-cli-1.2.0-macos-x64.tar.gz"
      sha256 "a9c58cab20ae53b015a05bc2b809e3302e4a2944606790ab62f134400c5132e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.2.0/deltaforge-cli-1.2.0-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.2.0/deltaforge-cli-1.2.0-linux-x64.tar.gz"
      sha256 "7d47413ca5d99ff0ccd4ae84b19db85927ec7f16efdae9c1685f1ea23fa42d4a"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

class DeltaforgeCli < Formula
  desc "Query Delta Lake and Apache Iceberg in place from the terminal, no cluster"
  homepage "https://deltaforge.org"
  version "1.0.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.5/deltaforge-cli-1.0.5-macos-arm64.tar.gz"
      sha256 "96dd34705bc29aa5d5037f6e67ad576f357becaa3f4940f62cc6da72adc03b91"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.5/deltaforge-cli-1.0.5-macos-x64.tar.gz"
      sha256 "6a0fe941fb3471f15141b5f2f2fb594b14b268ea9cdc20dd131ed727deb75c4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.5/deltaforge-cli-1.0.5-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.5/deltaforge-cli-1.0.5-linux-x64.tar.gz"
      sha256 "dcf6677f8d14422e1136da0e214b8f710e7aae1589259102216e2ac6e65e1f50"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

class DeltaforgeCli < Formula
  desc "Query Delta Lake and Apache Iceberg in place from the terminal, no cluster"
  homepage "https://deltaforge.org"
  version "1.0.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-cli-1.0.6-macos-arm64.tar.gz"
      sha256 "4db3ac73e5ad1dbe9a789f8b7f525c1f36d4628af8dcaed7b831ef7b88a8e461"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-cli-1.0.6-macos-x64.tar.gz"
      sha256 "9212f8cbbddeb3a7ce766a8ef58f6af2a44c1c7353f7c96b6a7d9467a0cdac9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-cli-1.0.6-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-cli-1.0.6-linux-x64.tar.gz"
      sha256 "0051595b461e6669af17b2b4b7d6bbd70704b0847fb5a6e7dc668d74ff3226c5"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

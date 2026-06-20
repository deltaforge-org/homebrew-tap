class DeltaforgeCli < Formula
  desc "Query Delta Lake and Apache Iceberg in place from the terminal, no cluster"
  homepage "https://deltaforge.org"
  version "1.0.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.7/deltaforge-cli-1.0.7-macos-arm64.tar.gz"
      sha256 "b417156d4f72ad0d72cfb59d84a46780676bcb188cccf2366b259cd4155ad6b5"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.7/deltaforge-cli-1.0.7-macos-x64.tar.gz"
      sha256 "4809a3de53d63e96efaa7ccbfee4ee9b36c01f2380ca0482dd982751c410c7e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.7/deltaforge-cli-1.0.7-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.7/deltaforge-cli-1.0.7-linux-x64.tar.gz"
      sha256 "062abbf46384e478ec686e79704d388c106d7b86cdbe9d086b5b294c7b56c17e"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

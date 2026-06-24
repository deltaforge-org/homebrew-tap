class DeltaforgeCli < Formula
  desc "Query Delta Lake and Apache Iceberg in place from the terminal, no cluster"
  homepage "https://deltaforge.org"
  version "1.0.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.8/deltaforge-cli-1.0.8-macos-arm64.tar.gz"
      sha256 "dc7aeb9b82c9ca2473be84cef02f9cc26211757650b31c41472a6e976211b021"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.8/deltaforge-cli-1.0.8-macos-x64.tar.gz"
      sha256 "2458625a0c4e62048f7ee27f71878993caa19fa5b621c8701f10b5a4e688e525"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.8/deltaforge-cli-1.0.8-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.8/deltaforge-cli-1.0.8-linux-x64.tar.gz"
      sha256 "d9d7b59529bf4b253eb7d2d97f5e4cd6c5f36b92c0d8cbee7169ebeb2ad73926"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

class DeltaforgeCli < Formula
  desc "Query Delta Lake and Apache Iceberg in place from the terminal, no cluster"
  homepage "https://deltaforge.org"
  version "1.0.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-cli-1.0.6-macos-arm64.tar.gz"
      sha256 "fa161ae15678a2a394c936c600dedbeea341274d399c609cdabe7cefcf2a76d3"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-cli-1.0.6-macos-x64.tar.gz"
      sha256 "d618221d5e78d7514ea090cefa6cfcd2bbb9452098b8a5a30c8f0c2f0818d5d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-cli-1.0.6-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.6/deltaforge-cli-1.0.6-linux-x64.tar.gz"
      sha256 "070944b3ac47599be8a0d8eb1a0252a4818944033a7c5e318b5bf932ba72ee6f"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

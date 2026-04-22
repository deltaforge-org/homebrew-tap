class DeltaforgeCli < Formula
  desc "Delta Forge command-line interface"
  homepage "https://deltaforge.org"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-cli-1.0.2-macos-arm64.tar.gz"
      sha256 "abd91924a4a8d3aa454204f564e6955a96f4500152068485c5de881d4a950fd4"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-cli-1.0.2-macos-x64.tar.gz"
      sha256 "0c747c9b26e851a75aeb50b6a508815df0734b051982b25ef8279e9c9ab6e53c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-cli-1.0.2-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-cli-1.0.2-linux-x64.tar.gz"
      sha256 "b38ce0369459916de16c1fe651ef0e14faf7e80ac8078c1a9f42339a7d72e237"
    end
  end

  def install
    bin.install "deltaforge-cli"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-cli --version 2>&1", 0..1)
  end
end

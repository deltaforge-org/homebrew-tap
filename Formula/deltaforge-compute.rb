class DeltaforgeCompute < Formula
  desc "Delta Forge compute node"
  homepage "https://deltaforge.org"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-compute-1.0.2-macos-arm64.tar.gz"
      sha256 "ebf2bdcaa52b7a3d7d0cee156e4414c2496f4db72a62b6443fbb504ebabfe4c3"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-compute-1.0.2-macos-x64.tar.gz"
      sha256 "a79347696b2ce24761ce8098723e66fb12ed8b453f76dbc8a47a9f637ca8dd63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-compute-1.0.2-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.2/deltaforge-compute-1.0.2-linux-x64.tar.gz"
      sha256 "7f074822a62be68ceed4c871207c40ab0e30369ef4686972f7130d56801873cc"
    end
  end

  def install
    bin.install "deltaforge-compute"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-compute --version 2>&1", 0..1)
  end
end

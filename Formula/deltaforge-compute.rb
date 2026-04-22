class DeltaforgeCompute < Formula
  desc "Delta Forge compute node"
  homepage "https://deltaforge.org"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-compute-1.0.1-macos-arm64.tar.gz"
      sha256 "5811fb61154849c46a8d04585326bd2f277ba14b756a8a8452b4ccf032072353"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-compute-1.0.1-macos-x64.tar.gz"
      sha256 "dea72b2a7fb9f56be0c3cf3d6353ca177902eece16678d09a81ffcdb48263e3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-compute-1.0.1-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.1/deltaforge-compute-1.0.1-linux-x64.tar.gz"
      sha256 "e8d771a49a66779b094760a5b6f49d2ec055ba6c137e5f1d0e38452e4310914c"
    end
  end

  def install
    bin.install "deltaforge-compute"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-compute --version 2>&1", 0..1)
  end
end

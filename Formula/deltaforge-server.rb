class DeltaforgeServer < Formula
  desc "DeltaForge control-plane server"
  homepage "https://deltaforge.org"
  version "1.0.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-server-1.0.4-macos-arm64.tar.gz"
      sha256 "751c14cfd80f33572bfa9065f5510097bfcfa458018d9b04fde21978f8b51ed2"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-server-1.0.4-macos-x64.tar.gz"
      sha256 "e9a8886aac9894b6faa212664e52fb6262b2e86437f19d723e03272dd81e6713"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-server-1.0.4-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/deltaforge-org/delta-forge/releases/download/v1.0.4/deltaforge-server-1.0.4-linux-x64.tar.gz"
      sha256 "914ba33bf0cdcd0a0c2c3e8edc5c36d028263f35e59d0e19f3a5da88d12c9a6c"
    end
  end

  def install
    bin.install "deltaforge-server"
  end

  test do
    assert_match "deltaforge", shell_output("#{bin}/deltaforge-server --version 2>&1", 0..1)
  end
end

class Edgelord < Formula
  desc "Prediction market arbitrage detection and execution CLI"
  homepage "https://github.com/usealtoal/edgelord"
  version "0.0.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-apple-darwin.tar.gz"
      sha256 "2d3f109dd6afc9443c3790b52df085aa47823ccfe68c8f4433a0139980f2656f"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-apple-darwin.tar.gz"
      sha256 "ef850b0369a56fabbb8c838f66f2763d3b8ed674f8629547e7596a29c04af642"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08c6729f3c0d880044c1a3d07cec2d4294b4c643814f602656068a460cbc592d"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ebec65771f635cb412f66800bbb53ad5d3c3d8405b970df36e4e45bdfef8c0c"
    end
  end

  def install
    bin.install "edgelord"
  end

  test do
    assert_match "edgelord #{version}", shell_output("#{bin}/edgelord --version")
  end
end

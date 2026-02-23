class Edgelord < Formula
  desc "Prediction market arbitrage detection and execution CLI"
  homepage "https://github.com/usealtoal/edgelord"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "edgelord"
  end

  test do
    assert_match "edgelord #{version}", shell_output("#{bin}/edgelord --version")
  end
end

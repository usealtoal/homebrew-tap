class Edgelord < Formula
  desc "Prediction market arbitrage detection and execution CLI"
  homepage "https://github.com/usealtoal/edgelord"
  version "0.0.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-apple-darwin.tar.gz"
      sha256 "64259855d8e7197d678e7477849e71b2f3158ef2901288d7d5dc5483214eeffc"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-apple-darwin.tar.gz"
      sha256 "069a4a958209ae0dc2cfc7aa29a3ba08469ee6483bff7bfc1cc9735330405754"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00646d31de540a328fa7c213318ecec95caa36a8a7569d243389f0924d48ef11"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da7a43e7b0ac3a1348f87968f54a5b91f8e2cba1eeeb7bf35937d909e7cd7680"
    end
  end

  def install
    bin.install "edgelord"
  end

  test do
    assert_match "edgelord #{version}", shell_output("#{bin}/edgelord --version")
  end
end

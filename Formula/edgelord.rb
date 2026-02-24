class Edgelord < Formula
  desc "Prediction market arbitrage detection and execution CLI"
  homepage "https://github.com/usealtoal/edgelord"
  version "0.0.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-apple-darwin.tar.gz"
      sha256 "99309304cf0ae2b892f2efa161e28c4900e7b01a242fe68a989cbadee7864ca0"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-apple-darwin.tar.gz"
      sha256 "5048ae69655c05e538141170fc139557bf67086530e796521524b60b9e23efb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b12a00ee71974562efa66f92463b9e46daa02636c03e15b10efeb4f2ee79e670"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a29f2a35e00fb1dbce5f6b054e736dbe15b48515a1c410cf7f41c232f17eea74"
    end
  end

  def install
    bin.install "edgelord"
  end

  test do
    assert_match "edgelord #{version}", shell_output("#{bin}/edgelord --version")
  end
end

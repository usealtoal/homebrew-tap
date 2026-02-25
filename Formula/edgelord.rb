class Edgelord < Formula
  desc "Prediction market arbitrage detection and execution CLI"
  homepage "https://github.com/usealtoal/edgelord"
  version "0.0.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-apple-darwin.tar.gz"
      sha256 "97279f02e6b2d84d4c0ab8f7d5bc42fb75bd59ad4eb4ea2bfae5f55045ccf527"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-apple-darwin.tar.gz"
      sha256 "f8f3418f8529aecc31186adce06ce83d29ee3dc5b6aa328e8f29b5c9d152aa26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1af49b7ce160bd3ebbff2eccf520316404b5c8a6ba5fd0dfab3df333873a5ab1"
    end

    on_intel do
      url "https://github.com/usealtoal/edgelord/releases/download/v#{version}/edgelord-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e709e0d7dabcb6dfb1ebe943f7ad44dce6382264ee01a6904bc28e94d3e7af7c"
    end
  end

  def install
    bin.install "edgelord"
  end

  test do
    assert_match "edgelord #{version}", shell_output("#{bin}/edgelord --version")
  end
end

class SpeedtestUstc < Formula
  desc "USTC network speed test CLI"
  homepage "https://github.com/Nanako718/speedtest-ustc"
  version "1.0.4"
  license "MIT"

  on_arm do
    url "https://github.com/Nanako718/speedtest-ustc/releases/download/v1.0.4/speedtest-ustc-macos-arm64"
    sha256 "5e1bc459ff6ebb1e24a371abdd4e2b91245ae61c2324627d5945abaaa7c86dc8"
  end

  on_intel do
    url "https://github.com/Nanako718/speedtest-ustc/releases/download/v1.0.4/speedtest-ustc-macos-amd64"
    sha256 "b2192cb8d4ede461526e3f89e471023a232948dc73a092dd36936cf78610190f"
  end

  def install
    bin.install "speedtest-ustc-macos-arm64" => "speedtest-ustc" if Hardware::CPU.arm?
    bin.install "speedtest-ustc-macos-amd64" => "speedtest-ustc" if Hardware::CPU.intel?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speedtest-ustc --version")
  end
end

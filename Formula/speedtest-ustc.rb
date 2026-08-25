class SpeedtestUstc < Formula
  desc "USTC network speed test CLI"
  homepage "https://github.com/Nanako718/speedtest-ustc"
  version "1.0.2"
  license "MIT"

  on_arm do
    url "https://github.com/Nanako718/speedtest-ustc/releases/download/v1.0.2/speedtest-ustc-macos-arm64"
    sha256 "e7d2390b6d62a97f2de164ef974a4084eb1313bfb3f50d21159b8606f6f81d5e"
  end

  on_intel do
    url "https://github.com/Nanako718/speedtest-ustc/releases/download/v1.0.2/speedtest-ustc-macos-amd64"
    sha256 "cb6c28cb92e76a8bbc2b63c94ba0f6efc52215feccfa6a081ae57f5e6bf24c74"
  end

  def install
    bin.install "speedtest-ustc-macos-arm64" => "speedtest-ustc" if Hardware::CPU.arm?
    bin.install "speedtest-ustc-macos-amd64" => "speedtest-ustc" if Hardware::CPU.intel?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speedtest-ustc --version")
  end
end

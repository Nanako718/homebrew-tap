class SpeedtestUstc < Formula
  desc "USTC network speed test CLI"
  homepage "https://github.com/Nanako718/speedtest-ustc"
  version "1.0.3"
  license "MIT"

  on_arm do
    url "https://github.com/Nanako718/speedtest-ustc/releases/download/v1.0.3/speedtest-ustc-macos-arm64"
    sha256 "83bf79676afb11edf92c1242f12cd34929919ba6b283056cbbd2c7169284ab79"
  end

  on_intel do
    url "https://github.com/Nanako718/speedtest-ustc/releases/download/v1.0.3/speedtest-ustc-macos-amd64"
    sha256 "78c2829b7df9e987c83eff44a2bbfe99fad4cf7a9af2e244bb62708c97da8804"
  end

  def install
    bin.install "speedtest-ustc-macos-arm64" => "speedtest-ustc" if Hardware::CPU.arm?
    bin.install "speedtest-ustc-macos-amd64" => "speedtest-ustc" if Hardware::CPU.intel?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speedtest-ustc --version")
  end
end

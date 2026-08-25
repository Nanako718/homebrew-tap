class SpeedtestUstc < Formula
  include Language::Python::Virtualenv

  desc "USTC network speed test CLI"
  homepage "https://github.com/Nanako718/speedtest"
  url "https://github.com/Nanako718/speedtest/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "5f1df0ad0ce243228fe1cdb9ffbc72a14d37954553650b27147ff6be99c60454"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speedtest-ustc --version")
  end
end

class Lsusb < Formula
  include Language::Python::Virtualenv

  desc "A macOS utility for viewing attached USB devices"
  homepage "https://github.com/jtrim777-dev/lsusb"
  url "https://maven.jtrim777.dev/releases/dev/jtrim777/lsusb/{version}/lsusb-pkg.tgz"
  version "{version}"
  sha256 "{sha256}"
  license "MIT"

  depends_on "python"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
  end
end

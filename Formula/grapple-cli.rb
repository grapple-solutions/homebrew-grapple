require "open-uri"
require "json"
require "digest"

class GrappleCli < Formula
  desc "Command-line interface for Grapple"
  homepage "https://github.com/grapple-solutions/grapple-cli"

  url "https://github.com/grapple-solutions/grapple-cli/archive/refs/tags/0.2.78.tar.gz"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"grpl")
  end
  test do
    system "#{bin}/grpl", "--version"
  end
end

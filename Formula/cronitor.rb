class Cronitor < Formula
  desc "cronitor CLI"
  homepage "https://cronitor.io"
  url "https://cronitor.io/dl/darwin_arm64.tar.gz"
  version "stable"
  sha256 "b1423c164ca833e91c2d8d668385df8fa87b56e69ce59f9807dca6d71d404507"

  def install
    bin.install "cronitor"
  end

  test do
    system "#{bin}/cronitor --help"
  end
end

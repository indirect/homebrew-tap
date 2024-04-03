class Cronitor < Formula
  desc "cronitor CLI"
  homepage "https://cronitor.io"
  url "https://cronitor.io/dl/darwin_amd64.tar.gz"
  version "stable"
  sha256 "81a6b8a76c99f083078cf1e82e80e692a684a9c0d7ad176ce01bc9950a62cb89"

  def install
    bin.install "cronitor"
  end

  test do
    system "#{bin}/cronitor --help"
  end
end

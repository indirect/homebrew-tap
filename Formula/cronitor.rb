class Cronitor < Formula
  desc "cronitor CLI"
  homepage "https://cronitor.io"
  url "https://cronitor.io/dl/darwin_amd64.tar.gz"
  version "stable"
  sha256 "040dc66a170b67ec5ee0c453e366f96709e80228aa63276cb99c55b18cf7b3d5"

  def install
    mkdir_p bin
    cp "cronitor", bin
  end

  test do
    system "#{bin}/cronitor --help"
  end
end

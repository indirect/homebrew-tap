class Cronitor < Formula
  desc "cronitor CLI"
  homepage "https://cronitor.io"
  url "https://cronitor.io/dl/cronitor-stable-darwin-amd64.zip"
  version "stable"
  sha256 "d75bca15aac0948c2caf71d4373f43aab2f0ecc294774ee02433a662ee4d09bd"

  def install
    mkdir_p bin
    cp "cronitor", bin
  end

  test do
    system "#{bin}/cronitor --help"
  end
end

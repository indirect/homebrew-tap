class WeirdFortunes < Formula
  desc "fortunes from weird twitter"
  homepage "https://github.com/indirect/homebrew-tap/"
  url "https://raw.githubusercontent.com/indirect/homebrew-tap/master/share/weird_twitter"
  version "1.1.0"
  sha256 "1c5c325e565f2e164e0adbaa2f6708f6f62bbe17e613ec659f4213d37e712fb0"

  depends_on "fortune" => :build

  def install
    system "strfile", "weird_twitter"
    mkdir_p share/"games/fortunes/weird"
    mv "weird_twitter", share/"games/fortunes/weird"
    mv "weird_twitter.dat", share/"games/fortunes/weird"
  end

  test do
    system "fortune #{prefix}/share/games/fortunes/weird/weird_twitter"
  end
end

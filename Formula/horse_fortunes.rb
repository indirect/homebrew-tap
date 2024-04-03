class HorseFortunes < Formula
  desc "a fortune file of horse_ebooks"
  homepage "http://horsefortun.es"
  version "1.0.0"
  url "https://raw.githubusercontent.com/indirect/homebrew-tap/master/share/horse_ebooks"
  sha256 "22cc4bf4a46194699cff7ce7ddfd936fece1ff769d83f1b34a072360a5f0c884"

  depends_on "fortune" => :build

  def install
    system "strfile", "horse_ebooks"
    mkdir_p share/"games/fortunes"
    mv "horse_ebooks", share/"games/fortunes"
    mv "horse_ebooks.dat", share/"games/fortunes"
  end

  test do
    system "fortune", share/"games/fortunes/horse_ebooks"
  end
end

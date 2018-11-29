class HorseFortunes < Formula
  desc "a fortune file of horse_ebooks"
  homepage "http://horsefortun.es"
  version "1.0.0"
  url "http://files.arko.net/1u3d360l1Y2O/horse_ebooks"
  sha256 "6d1d0f7876270b7d10c7676506823d21f48dff0da2569a3be70575e8299b5649"

  depends_on "fortune" => :build

  def install
    system "strfile", "horse_ebooks"
    mkdir_p "#{prefix}/share/games/horse_fortunes"
    mv "horse_ebooks", "#{prefix}/share/games/horse_fortunes"
    mv "horse_ebooks.dat", "#{prefix}/share/games/horse_fortunes"
  end

  test do
    system "fortune #{prefix}/share/games/horse_fortunes"
  end
end

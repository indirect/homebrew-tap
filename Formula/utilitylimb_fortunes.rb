class UtilityLimbFortunes < Formula
  desc "fortunes from utilitylimb"
  homepage "https://github.com/indirect/homebrew-tap/"
  url "https://raw.githubusercontent.com/indirect/homebrew-tap/master/share/utilitylimb"
  version "1.2.0"
  sha256 "c3f3ac7f0c8274963a5fb3334986dca259c3a9dfd366196256d69ded570b8405"

  depends_on "fortune" => :build

  def install
    system "strfile", "utilitylimb"
    mkdir_p share/"games/fortunes/weird"
    mv "utilitylimb", share/"games/fortunes/weird"
    mv "utilitylimb.dat", share/"games/fortunes/weird"
  end

  test do
    system "fortune #{prefix}/share/games/fortunes/weird/utility_limb"
  end
end

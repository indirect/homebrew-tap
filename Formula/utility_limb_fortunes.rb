class UtilityLimbFortunes < Formula
  desc "fortunes from weird twitter"
  homepage "https://github.com/indirect/homebrew-tap/"
  url "https://raw.githubusercontent.com/indirect/homebrew-tap/master/share/utility_limb"
  version "1.1.0"
  sha256 "c3f3ac7f0c8274963a5fb3334986dca259c3a9dfd366196256d69ded570b8405"

  depends_on "fortune" => :build

  def install
    system "strfile", "utility_limb"
    mkdir_p share/"games/fortunes"
    mv "utility_limb", share/"games/fortunes"
    mv "utility_limb.dat", share/"games/fortunes"
  end

  test do
    system "fortune #{prefix}/share/games/fortunes/utility_limb"
  end
end

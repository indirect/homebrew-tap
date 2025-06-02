class UtilityLimbFortunes < Formula
  desc "fortunes from weird twitter"
  homepage "https://github.com/indirect/homebrew-tap/"
  url "https://raw.githubusercontent.com/indirect/homebrew-tap/master/share/utility_limb"
  version "1.0.0"
  sha256 "69beb762a7fbd966a7d94b3335126c4c0d5be42dc41dc3129f365694b469e4be"

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

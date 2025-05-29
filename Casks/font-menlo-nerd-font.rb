cask "font-menlo-nerd-font" do
  version "5f05249f0ba3534b9f59efcecb0473d03095d327"
  sha256 "7d4a3234c5b7e9274e39b29db6225970842735318a0318ad5850786d203be2a2"

  url "https://github.com/indirect/menlo-nerd-font/archive/#{version}.zip"
  name "Menlo Nerd Font"
  homepage "https://github.com/indirect/menlo-nerd-font"

  font "menlo-nerd-font-#{version}/Menlo Nerd Font.ttc"
end

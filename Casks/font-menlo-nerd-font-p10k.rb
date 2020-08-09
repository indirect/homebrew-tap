cask "font-menlo-nerd-font-p10k" do
  version "ebd007bf58b8b58f2901e7ea6479efc0f0aae710"
  sha256 "35fe35d37e9a3a9e931371afb0604ddc7b6adc482c01c19f36379c8dde8e1e0e"

  url "https://github.com/indirect/menlo-nerd-font/archive/#{version}.zip"
  name "Menlo Nerd Font for Powerlevel10k"
  homepage "https://github.com/indirect/menlo-nerd-font"

  font "menlo-nerd-font-#{version}/Menlo NF Regular.ttf"
  font "menlo-nerd-font-#{version}/Menlo NF Italic.ttf"
  font "menlo-nerd-font-#{version}/Menlo NF Bold.ttf"
  font "menlo-nerd-font-#{version}/Menlo NF Bold Italic.ttf"
end

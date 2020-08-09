cask "font-meslo-nerd-font-p10k" do
  version "54fbc18ea84d15807f921146c1689539b62a6061"
  sha256 "5a515c9df1a607dcfb73139ae9d77e7b70e59d38abaf8805b56204b233397af9"

  url "https://github.com/romkatv/powerlevel10k-media/archive/#{version}.zip"
  name "Meslo LG S Nerd Font for Powerlevel10k"
  homepage "https://github.com/romkatv/powerlevel10k"

  font "powerlevel10k-media-#{version}/MesloLGS NF Regular.ttf"
  font "powerlevel10k-media-#{version}/MesloLGS NF Italic.ttf"
  font "powerlevel10k-media-#{version}/MesloLGS NF Bold.ttf"
  font "powerlevel10k-media-#{version}/MesloLGS NF Bold Italic.ttf"
end

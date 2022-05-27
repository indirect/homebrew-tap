kitty = ::Cask::Caskroom.casks(config: @config).find{|c| c.token == "kitty" }.dup

kitty.postflight do
  system_command "curl",
    args: [
      "https://github.com/k0nserv/kitty-icon/raw/main/kitty.icns",
      "--output", "#{appdir}/kitty.app/Contents/Resources/kitty.icns"
  ],
  sudo: false
  system_command "touch",
    args: ["#{appdir}/kitty.app"],
    sudo: false
  system_command "xattr",
    args: ["-cr", "#{appdir}/kitty.app"],
    sudo: false
end

return kitty

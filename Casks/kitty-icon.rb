cask "kitty-icon" do
  version "1.0"
  sha256 "6f156e5a65d792d9a35f521f60a7dd8bedee55de479c417fa9cc2079515ace58"
  url "https://github.com/k0nserv/kitty-icon/raw/main/kitty.icns"
  name "kitty"
  desc "A different icon for Kitty"
  homepage "https://github.com/indirect/homebrew-tap/"

  depends_on cask: "kitty"

  binary "kitty.icns", target: "#{appdir}/kitty.app/Contents/Resources/kitty.icns"

  preflight do
    icon = "#{appdir}/kitty.app/Contents/Resources/kitty.icns"
    unless File.exist?("#{icon}.bak")
      system_command "mv", args: [icon, "#{icon}.bak"], sudo: false
    end
  end

  postflight do
    system_command "touch",
      args: ["#{appdir}/kitty.app"],
      sudo: false
    system_command "xattr",
      args: ["-cr", "#{appdir}/kitty.app"],
      sudo: false
  end
end

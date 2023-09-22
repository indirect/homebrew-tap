cask "kitty-icon" do
  version "1.0"
  sha256 "27cf5e8ac8c00834d1ad258788857038b4e3a211b305a872c998a3938beaee95"
  url "https://github.com/k0nserv/kitty-icon/raw/main/build/neue_outrun.icns"
  name "kitty"
  desc "A different icon for Kitty"
  homepage "https://github.com/indirect/homebrew-tap/"

  depends_on cask: "kitty"

  binary "neue_outrun.icns", target: "#{appdir}/kitty.app/Contents/Resources/kitty.icns"

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
    system_command "rm",
      args: Dir.glob("/var/folders/*/*/*/com.apple.dock.iconcache"),
      sudo: false
    system_command "killall",
      args: ["Dock"],
      sudo: false
  end
end

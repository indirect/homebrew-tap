class KarabinerElementsAppProfiles < Formula
  desc "Add app-specific behavior in Karabiner-Elements"
  homepage "https://github.com/nriley/Karabiner-Elements-App-Profiles"
  url "https://github.com/nriley/Karabiner-Elements-App-Profiles/releases/download/v1.0/Karabiner-Elements-App-Profiles.zip"
  sha256 "d254673e6e31c4de556db2a615e85c8151a979d1d4d7577f49b7622f150acbc3"

  def install
    bin.install "Karabiner-Elements-App-Profiles"
    inreplace "net.sabi.Karabiner-Elements-App-Profiles.plist", "/usr/local/bin", HOMEBREW_PREFIX/"bin"
    prefix.install "net.sabi.Karabiner-Elements-App-Profiles.plist"
  end

  plist_options :startup => true

  def plist
    (prefix/"net.sabi.Karabiner-Elements-App-Profiles.plist").read
  end

  test do
    system bin/"karabiner-elements-app-profiles"
  end
end

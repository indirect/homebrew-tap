cask "ghostty" do
  version :latest
  sha256 :no_check
  depends_on arch: :arm64, macos: ">= :monterey"

  desc "GPU-accelerated terminal emulator pushing modern features"
  homepage "https://github.com/mitchellh/ghostty"
  url do
    assets = GitHub.get_release("mitchellh", "ghostty", "tip").fetch("assets")
    latest = assets.find{|a| a["name"] == "ghostty-macos-universal.zip" }.fetch("url")
    [latest, header: [
      "Accept: application/octet-stream",
      "Authorization: bearer #{GitHub::API.credentials}"
    ]]
  end

  auto_updates true

  app "Ghostty.app"
end

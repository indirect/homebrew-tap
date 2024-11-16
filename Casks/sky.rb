cask "sky" do
  version "0.4.0"
  sha256 "7fd9b34d3d0ca9d540db4746f24ca35335a46d27f9a0d70fb0b0de0e388a82d8"

  url "https://github.com/jcsalterego/Sky.app/releases/download/#{version}/Sky.#{version}.dmg"
  name "Sky"
  desc "macOS wrapper app for Bluesky"
  homepage "https://github.com/jcsalterego/Sky.app"

  livecheck do
    url :url
  end

  depends_on macos: ">= :sequoia"

  app "Sky.app"

  zap trash: [
    "~/Library/Application Scripts/jcsalterego.Sky",
    "~/Library/Containers/jcsalterego.Sky",
  ]
end

cask "glance" do
  version "1.4.2"
  sha256 "cfe1577d10a58525ef40db69e2cac6ad6397d5e0540b74ca0d9bdc71361dccdf"

  url "https://github.com/chamburr/glance/releases/download/v#{version}/Glance-#{version}.dmg"
  name "Glance"
  desc "All-in-one Quick Look plugin. Glance provides Quick Look previews for files that macOS doesn't support out of the box."
  homepage "https://github.com/chamburr/glance"

  app "Glance.app"
end

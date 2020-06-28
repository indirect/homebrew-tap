cask 'font-sf-mono-nerd-font' do
  version '15.0d5e1'
  sha256 '8621fe412854db2846522c65619e635c8968f64b3341910b5286a95c46aac618'

  url "https://github.com/epk/SF-Mono-Nerd-Font/releases/download/v#{version}/SF-Mono-Nerd-Font.zip"
  appcast 'https://github.com/epk/SF-Mono-Nerd-Font/releases.atom'
  name 'SF-Mono-Nerd-Font'
  homepage 'https://github.com/epk/SF-Mono-Nerd-Font'

  font 'SF-Mono-Nerd-Font/SFMono Bold Italic Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Bold Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Heavy Italic Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Heavy Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Light Italic Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Light Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Medium Italic Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Medium Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Regular Italic Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Regular Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Semibold Italic Nerd Font Complete.otf'
  font 'SF-Mono-Nerd-Font/SFMono Semibold Nerd Font Complete.otf'
end

cask 'shiftit' do
  version '2.2'
  sha256 'f1817eb02eb85a41b5c5fa387e2b9afaba8391f93f95397452774e44aa5fc913'

  url 'https://github.com/indirect/homebrew-tap/releases/download/shiftit-v2.2/ShiftIt.zip'
  name 'ShiftIt'
  homepage 'https://github.com/fikovnik/ShiftIt'

  conflicts_with cask: ['shiftit']

  app 'ShiftIt.app'

  zap trash: [
    '~/Library/Preferences/org.shiftitapp.ShiftIt.plist',
  ]
end

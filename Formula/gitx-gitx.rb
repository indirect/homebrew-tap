cask 'gitx-gitx' do
  version '0.16-2327'
  sha256 'c8dd6dcac8dd85808acdb937f3125bf67b2b1c2b36da5541f20de73628abf544'

  url 'https://github.com/gitx/gitx/releases/download/build%2F0.16%2F2327/GitX-dev-2327.dmg'
  name 'GitX'
  homepage 'https://github.com/gitx/gitx'

  conflicts_with cask: ['gitx', 'laullon-gitx', 'rowanj-gitx']

  app 'GitX.app'
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.phere.gitx.sfl*',
               '~/Library/Caches/net.phere.GitX',
               '~/Library/Preferences/net.phere.GitX.plist',
               '~/Library/Saved Application State/net.phere.GitX.savedState',
             ]
end

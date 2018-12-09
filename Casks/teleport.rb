cask 'teleport' do
  version '1.2.2'
  sha256 'a5dc3b69aae7076e02160fefa2be6aaad6c8692b4503bc3ba3c2914e5a9d445f'

  url 'https://github.com/indirect/homebrew-tap/releases/download/teleport-v1.2.2/teleport.zip'
  name 'Teleport'
  homepage 'https://github.com/abyssoft/teleport'

  app 'Teleport.app'

  zap trash: [
    '~/Library/Preferences/com.abyssoft.teleport.plist',
  ]
end

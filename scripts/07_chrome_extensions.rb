#!/usr/bin/env ruby

chrome_extensions = {
  :onepassword => 'aomjjhallfgjeglblehebfpbcfeobpgk',
  # :adblockplus => 'cfhdojbkjhnklbpkdaibdccddilifddb',
  :buffer => 'noojglkidnpfjbincgijbaiedldjfbhh',
  :mediakeysforovercast => 'iomjboggdipkbeddinniaoiffjibdach',
  # :momentum => 'laookkfknpbbblfpciffpaejjkokdgca',
  :palettab => 'bidckpnndigbjhmojikkhmejkfkpgoih',
  :ublock => 'cjpalhdlnbpafiamejdnhcphjbkeiagm',
  :vimium => 'dbepggeogbaibhgnhhndojpepiihcmeb'
}

canary_extensions = {
  :chromeextensionsdeveloper => 'ohmmkhmmmpcnpikjeljgnaoabkaalbgc',
  :emmetlivestyle => 'diebikgmpmeppiilkaijjbdgciafajmg',
  :holabetterinternet => 'gkojfkhlekighikafcpjkiklfbnlmeio',
  :livereload => 'jnihajbhpnppcggbcgedagnkighmdlei',
  :snappysnippet => 'blfngdefapoapkcdibbdkigpeaffgcil',
  :tincr => 'lfjbhpnjiajjgnjganiaggebdhhpnbih'
}

chrome_executable = %x(mdfind kMDItemCFBundleIdentifier = com.google.Chrome).strip + '/Contents/MacOS/Google Chrome'
canary_executable = %x(mdfind kMDItemCFBundleIdentifier = com.google.Chrome.canary).strip + '/Contents/MacOS/Google Chrome Canary'

chrome_extensions.values.each do |value|
  system(chrome_executable, '--no-first-run', '--disable-default-apps', "--install-from-webstore=#{value}")
end

canary_extensions.values.each do |value|
  system(canary_executable, '--no-first-run', '--disable-default-apps', "--install-from-webstore=#{value}")
end

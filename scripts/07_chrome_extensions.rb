#!/usr/bin/env ruby

chrome_extensions = {
  :onepassword => 'aomjjhallfgjeglblehebfpbcfeobpgk',
  :adblockplus => 'cfhdojbkjhnklbpkdaibdccddilifddb',
  :buffer => 'noojglkidnpfjbincgijbaiedldjfbhh',
  # :momentum => 'laookkfknpbbblfpciffpaejjkokdgca',
  :palettab => 'bidckpnndigbjhmojikkhmejkfkpgoih',
  :vimium => 'dbepggeogbaibhgnhhndojpepiihcmeb'
}

canary_extensions = {
  :chromeextensionsdeveloper => 'ohmmkhmmmpcnpikjeljgnaoabkaalbgc',
  :emmetlivestyle => 'diebikgmpmeppiilkaijjbdgciafajmg',
  :livereload => 'jnihajbhpnppcggbcgedagnkighmdlei',
  :snappysnippet => 'blfngdefapoapkcdibbdkigpeaffgcil',
  :tincr => 'lfjbhpnjiajjgnjganiaggebdhhpnbih'
}

chrome_executable = %x(mdfind kMDItemCFBundleIdentifier = com.google.Chrome).strip + '/Contents/MacOS/Google Chrome'
canary_executable = %x(mdfind kMDItemCFBundleIdentifier = com.google.Chrome.canary).strip + '/Contents/MacOS/Google Chrome Canary'

chrome_extensions.each do |key, value|
  system(chrome_executable, '--no-first-run', '--disable-default-apps', "--install-from-webstore=#{value}")
end

canary_extensions.each do |key, value|
  system(canary_executable, '--no-first-run', '--disable-default-apps', "--install-from-webstore=#{value}")
end

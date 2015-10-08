#!/usr/bin/env ruby

chrome_extensions = {
  onepassword: 'aomjjhallfgjeglblehebfpbcfeobpgk',
  buffer: 'noojglkidnpfjbincgijbaiedldjfbhh',
  directlinks: 'mmlodedokepmgdiakhfcbopalplppiok',
  earthviewfromgoogleearth: 'bhloflhklmhfpedakmangadcdofhnnoh',
  httpseverywhere: 'gcbommkclmclpchllfjekcdonpmejbdp',
  mediakeysforovercast: 'iomjboggdipkbeddinniaoiffjibdach',
  thegreatsuspender: 'klbibkeccnjlkjkiokjodocebajanakg',
  ublockorigin: 'cjpalhdlnbpafiamejdnhcphjbkeiagm',
  vimium: 'dbepggeogbaibhgnhhndojpepiihcmeb'
}

canary_extensions = {
  chromeextensionsdeveloper: 'ohmmkhmmmpcnpikjeljgnaoabkaalbgc',
  daydream: 'oajnmbophdhdobfpalhkfgahchpcoali',
  emmetlivestyle: 'diebikgmpmeppiilkaijjbdgciafajmg',
  honey: 'bmnlcjabgnpnenekpadlanbbkooimhnj',
  pesticide: 'bblbgcheenepgnnajgfpiicnbbdmmooh',
  selectorgadget: 'mhjhnkcfbdhnjickkkdbjoemdmbfginb',
  snappysnippet: 'blfngdefapoapkcdibbdkigpeaffgcil',
  tape: 'jmfleijdbicilompnnombcbkcgidbefb',
  thecamelizer: 'ghnomdcacenbmilgjigehppbamfndblo',
  tincr: 'lfjbhpnjiajjgnjganiaggebdhhpnbih'
}

chrome_executable = %x(mdfind kMDItemCFBundleIdentifier = com.google.Chrome).strip + '/Contents/MacOS/Google Chrome'
canary_executable = %x(mdfind kMDItemCFBundleIdentifier = com.google.Chrome.canary).strip + '/Contents/MacOS/Google Chrome Canary'

chrome_extensions.values.each do |value|
  system(chrome_executable, '--no-first-run', '--disable-default-apps', "--install-from-webstore=#{value}")
end

canary_extensions.values.each do |value|
  system(canary_executable, '--no-first-run', '--disable-default-apps', "--install-from-webstore=#{value}")
end

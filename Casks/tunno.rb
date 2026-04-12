cask "tunno" do
  version "1.0.0"
  sha256 "c7a273e1355da537b35984c3bf869e617d4ca1611fca94ed4affc14ecb907549"

  url "https://github.com/tunnoio/tunno/releases/download/v#{version}/Tunno-#{version}.dmg"
  name "Tunno"
  desc "Secure tunnels to localhost with request inspection"
  homepage "https://tunno.io"

  depends_on macos: ">= :sonoma"

  app "tunno.app"

  zap trash: [
    "~/Library/Preferences/com.morcolabs.tunno.plist",
  ]
end

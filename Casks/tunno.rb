cask "tunno" do
  version "1.1.4"
  sha256 "c61d31bfec05a8dd58c2ea7ad0331d4e2d0d5fb1b340fe2a9026e9f4711e664e"

  url "https://github.com/tunnoio/tunno/releases/download/v#{version}/Tunno-#{version}.dmg"
  name "Tunno"
  desc "Secure tunnels to localhost with request inspection"
  homepage "https://tunno.io"

  depends_on macos: ">= :sonoma"

  app "tunno.app"

  zap trash: [
    "~/Library/Preferences/com.morcolabs.tunno.plist",
    "~/Library/Application Support/com.morcolabs.tunno",
    "~/Library/Application Support/Tunno",
    "~/Library/Caches/com.morcolabs.tunno",
    "~/Library/Logs/Tunno",
    "~/Library/HTTPStorages/com.morcolabs.tunno",
    "~/Library/HTTPStorages/com.morcolabs.tunno.binarycookies",
  ]
end

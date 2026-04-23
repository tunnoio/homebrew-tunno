cask "tunno" do
  version "1.1.5"
  sha256 "3c11adaacc256f9c417d909288b79a15997cab57c2dc33d5242f320899c639e3"

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

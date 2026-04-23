cask "tunno" do
  version "1.0.1"
  sha256 "c43efd9a83a52de6b168899bd7d6a1a56afed5ff1ae7bbd9eafa39629706b32d"

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

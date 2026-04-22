cask "tunno" do
  version "1.1.3"
  sha256 "17963df72ba8731e6b2bbe60c811f9a5e8adcafee9f86265e2180fcae9cb4f6f"

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

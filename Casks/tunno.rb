cask "tunno" do
  version "1.0.2"
  sha256 "890debba375f552f55a545c79be5d77f203a65f1c77fe4c367b25b91775c89f5"

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

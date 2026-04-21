cask "tunno" do
  version "1.1.2"
  sha256 "4d36263e958b23680b4bfe4a7df34a77a4444bebec71009a826ab3fd09451194"

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

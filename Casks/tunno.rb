cask "tunno" do
  version "1.1.0"
  sha256 "c826d65c4dc2df8de88d119d15a813db845cee8f9cd74073b485c921ac7f230b"

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

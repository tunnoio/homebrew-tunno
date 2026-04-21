cask "tunno" do
  version "1.1.1"
  sha256 "799205fbb48492cd315f537fd67c313b738e64f2b623651bbf8b3b9889807f34"

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

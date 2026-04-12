cask "tunno" do
  version "1.0.1"
  sha256 "1188541b653092d6ba1d1e65f55c5ed32137ea7e1ad779c4fb7158e510d7e446"

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

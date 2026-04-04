cask "claudebat" do
  version "1.0.3"
  sha256 "f3f14c0d1261c745d028b7b6758a30f8e0a25a4d46e5fb03452ca658625218d8"

  url "https://github.com/DiamondKJ/ClaudeBat/releases/download/v#{version}/ClaudeBat-#{version}.dmg"
  name "ClaudeBat"
  desc "Claude usage as a retro 8-bit battery in your menu bar"
  homepage "https://github.com/DiamondKJ/ClaudeBat"

  depends_on macos: ">= :sonoma"

  app "ClaudeBat.app"

  zap trash: [
    "~/Library/Preferences/com.diamondkj.claudebat.plist",
  ]
end

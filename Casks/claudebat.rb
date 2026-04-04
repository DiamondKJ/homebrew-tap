cask "claudebat" do
  version "1.0.4"
  sha256 "271d4c13f46f1e50d520cd381615bf5cb2a80bdede38050989b9c6ee96335e13"

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

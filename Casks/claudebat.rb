cask "claudebat" do
  version "1.0.3"
  sha256 "d5aa842cc2792f56788ba8bf9b69c105fea4c8c6818bc3acbb3d08eb7a68f023"

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

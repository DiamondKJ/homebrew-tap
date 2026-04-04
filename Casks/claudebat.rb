cask "claudebat" do
  version "1.0.3"
  sha256 "f07fbe50b502f0e0587d811c7eabdd9612bfb54ac624bd3d0ad8a5b8627584ed"

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

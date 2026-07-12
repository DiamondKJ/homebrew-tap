cask "claudebat" do
  version "1.0.13"
  sha256 "24f2ade5b802a1d948f9f63862078abeb51730b0a8bee5da628f96c31f4798fa"

  url "https://github.com/DiamondKJ/ClaudeBat/releases/download/v#{version}/ClaudeBat-#{version}.dmg"
  name "ClaudeBat"
  desc "Claude usage as a retro 8-bit battery in your menu bar"
  homepage "https://github.com/DiamondKJ/ClaudeBat"

  depends_on macos: ">= :sonoma"

  app "ClaudeBat.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ClaudeBat.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.diamondkj.claudebat.plist",
  ]
end

cask "claudebat" do
  version "1.0.8"
  sha256 "4e633d3178746c5f9a43d554d4f66a12987f0ad4f783821dbb641820ae9e5dce"

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

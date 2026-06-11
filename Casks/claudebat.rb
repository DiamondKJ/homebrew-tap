cask "claudebat" do
  version "1.0.12"
  sha256 "821143a36fbe412e53cc9d9b86b99dfb5127186a450000fcf1adf9dc76dfbdeb"

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

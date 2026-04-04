cask "claudebat" do
  version "1.0.7"
  sha256 "dbf9931a875fb50417b03607ab6a4d1965f3c284d97688856d1f259f71c075df"

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

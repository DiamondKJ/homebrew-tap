cask "claudebat" do
  version "1.0.10"
  sha256 "e9e371b7b00a31008731dab0190fa6afd62d5bfc9d43ee4cc942844658a01bc0"

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

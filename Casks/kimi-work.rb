# frozen_string_literal: true

cask "kimi-work" do
  version "3.2.2"

  url "https://kimi-img.moonshot.cn/app/download/mac/kimi_#{version}.dmg"
  sha256 "bed75acd64289736192187fc619e030d8988788e9f56b3276b434cc1d6456b74"

  name "Kimi"
  desc "AI-powered work assistant by Moonshot AI"
  homepage "https://www.kimi.com/zh-cn/products/kimi-work"

  depends_on arch: :arm64

  livecheck do
    url "https://appsupport.moonshot.cn/api/app/pkg/latest/macos/download"
    strategy :header_match
  end

  app "Kimi.app"

  zap trash: [
    "~/Library/Application Support/Kimi",
    "~/Library/Caches/com.moonshot.kimichat",
    "~/Library/Caches/com.moonshot.kimichat.ShipIt",
    "~/Library/Preferences/com.moonshot.kimichat.plist",
    "~/Library/Saved Application State/com.moonshot.kimichat.savedState",
  ]
end

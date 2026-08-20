# frozen_string_literal: true

cask "kimi-work" do
  version "3.2.1"

  url "https://kimi-img.moonshot.cn/app/download/mac/kimi_#{version}.dmg"
  sha256 "2c66da16f5f0243517a780c95c78d0f44cfb2a2824ff93b9a0e0710f487208c3"

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

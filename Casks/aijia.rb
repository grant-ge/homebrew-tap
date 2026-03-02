cask "aijia" do
  version "0.3.2"
  sha256 "9cf8a626281106606da5b9396c4db59ebbe0c0b1ea0f69a78451f922ed6a9c1f"

  url "https://github.com/grant-ge/aiminjia/releases/download/v#{version}/aijia_#{version}_aarch64.dmg"
  name "AI小家"
  desc "AI-powered HR compensation analysis assistant"
  homepage "https://github.com/grant-ge/aiminjia"

  depends_on arch: :arm64

  app "AI小家.app"

  zap trash: [
    "~/Library/Application Support/com.aijia.app",
    "~/.renlijia",
  ]
end

cask "aijia" do
  version "0.3.4"
  sha256 "eae75c77906bbe5e94e85d2183cf011c88d4639f6db13fd93502d2ddbec6da74"

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

cask "aijia" do
  version "0.3.0"
  sha256 "8121a2cfb5ed9074cdc14fcdd25723ad7d33aa73cd3e0801bafdcd58f6b666be"

  url "https://github.com/grant-ge/aiminjia/releases/download/v0.3.1/AI._#{version}_aarch64.dmg"
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

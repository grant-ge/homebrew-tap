cask "aijia" do
  version "0.3.2"
  sha256 "4dcdc0b305aaf64b54456b024adeef6d4b9fa5f837dcd8058e44600b1ff4b9da"

  url "https://github.com/grant-ge/aiminjia/releases/download/v#{version}/AI._#{version}_aarch64.dmg"
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

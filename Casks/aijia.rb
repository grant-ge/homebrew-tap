cask "aijia" do
  version "0.2.0"
  sha256 "0a1ffd9d7426d48338ac785986915aa8fa7e4c3a686b89624905224dc0dcfdf4"

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

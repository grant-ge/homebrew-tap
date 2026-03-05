cask "aijia" do
  version "0.3.12"
  sha256 :no_check

  on_arm do
    url "https://lotus.renlijia.com/aijia/v#{version}/AIjia_#{version}_aarch64.dmg"
  end

  on_intel do
    url "https://lotus.renlijia.com/aijia/v#{version}/AIjia_#{version}_x64.dmg"
  end

  name "AI小家"
  desc "AI-powered HR compensation analysis assistant"
  homepage "https://github.com/grant-ge/aiminjia"

  app "AIjia.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AIjia.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.aijia.app",
    "~/.renlijia",
  ]
end

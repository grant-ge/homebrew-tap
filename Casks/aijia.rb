cask "aijia" do
  version "0.3.20"
  sha256 :no_check

  on_arm do
    url "https://lotus.renlijia.com/aijia/v#{version}/AIjia_#{version}_aarch64.dmg"
  end

  on_intel do
    url "https://lotus.renlijia.com/aijia/v#{version}/AIjia_#{version}_x64.dmg"
  end

  name "AIjia"
  desc "AI-powered HR compensation analysis assistant"
  homepage "https://github.com/grant-ge/aiminjia"

  app "AIjia.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AIjia.app"],
                   sudo: false
  end

  caveats <<~EOS
    首次打开 AIjia 时，如果遇到"已损坏"提示，请在终端执行：
      xattr -cr /Applications/AIjia.app

    或者在 Finder 中右键点击应用，选择"打开"（而非双击）。

    从旧版本升级时，如果遇到 "AI小家.app is not there" 错误，请手动删除旧版：
      rm -rf "/Applications/AI小家.app"
      brew reinstall grant-ge/tap/aijia
  EOS

  zap trash: [
    "~/Library/Application Support/com.aijia.app",
    "~/.renlijia",
  ]
end

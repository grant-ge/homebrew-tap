cask "aijia-beta" do
  version "0.5.22-beta.1"
  sha256 :no_check

  on_arm do
    url "https://lotus.renlijia.com/aijia/beta/v#{version}/AIjia_#{version}_aarch64.dmg"
  end
  on_intel do
    url "https://lotus.renlijia.com/aijia/beta/v#{version}/AIjia_#{version}_x64.dmg"
  end

  name "AIjia (Beta)"
  desc "Beta channel — early access builds, not for production use"
  homepage "https://github.com/grant-ge/aiminjia"

  # Beta is installed side-by-side with the release cask. The .app filename
  # is still "AIjia.app", so we can't have both in /Applications at once;
  # beta cask conflicts with the release cask intentionally.
  conflicts_with cask: "grant-ge/tap/aijia"

  app "AIjia.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AIjia.app"],
                   sudo: false
  end

  zap trash: [
    "~/.renlijia",
    "~/Library/Application Support/com.aijia.app",
  ]

  caveats <<~EOS
    这是 AIjia 的 beta 测试版本，可能包含未稳定的特性。
    生产使用请安装正式版：brew install --cask grant-ge/tap/aijia

    首次打开如果遇到"已损坏"提示，请在终端执行：
      xattr -cr /Applications/AIjia.app
  EOS
end

class Effectengine < Formula
  desc "An image editing toolset written in Rust."
  homepage "https://github.com/louisescher/effectengine"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.6/effectengine-macos-aarch64.tar.gz"
      sha256 "9ca13675cf66b42e26c437caa86738d0dec92bdb9b9afa10d549557cb2b554b4"
    end
    on_intel do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.6/effectengine-macos-x86_64.tar.gz"
      sha256 "78a2c625e75b88252903b6ecdeec8414eb0da0019f1b1ebbf2abca17ce2bec8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.6/effectengine-linux-aarch64.tar.gz"
      sha256 "df7d66c1125529daafc1c45c63f76cb294295ba8f417cd8b7100a09e9b814a1d"
    end
    on_intel do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.6/effectengine-linux-x86_64.tar.gz"
      sha256 "1f816a0ca78d517428380fb1d4542f7c469b31c7d0f8b20ea08c8979111c1b18"
    end
  end

  def install
    bin.install "effectengine"
  end

  test do
    system "\#{bin}/effectengine", "--version"
  end
end

class Effectengine < Formula
  desc "An image editing toolset written in Rust."
  homepage "https://github.com/louisescher/effectengine"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.5/effectengine-macos-aarch64.tar.gz"
      sha256 "75c037e0a707d1c27da265ccddd506566411c7c6bd65325a84a84daf4339353a"
    end
    on_intel do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.5/effectengine-macos-x86_64.tar.gz"
      sha256 "5b92c34c80ee819605e9df7dc1895e6310811bb934b906c9010ad539c533950f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.5/effectengine-linux-aarch64.tar.gz"
      sha256 "4452aa87145899fd3761e3a4a956391c3c198527761e841624b63c268e3b34e5"
    end
    on_intel do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.5/effectengine-linux-x86_64.tar.gz"
      sha256 "17d74ac5b325a1d5f67cb22370c1348cac5d0b3d1d044dc2a05ea088d211ce14"
    end
  end

  def install
    bin.install "effectengine"
  end

  test do
    system "\#{bin}/effectengine", "--version"
  end
end

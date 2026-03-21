class Effectengine < Formula
  desc "An image editing toolset written in Rust."
  homepage "https://github.com/louisescher/effectengine"
  version ""

  on_macos do
    on_arm do
      url "https://github.com/louisescher/effectengine/releases/download/main/effectengine-macos-aarch64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/louisescher/effectengine/releases/download/main/effectengine-macos-x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/louisescher/effectengine/releases/download/main/effectengine-linux-aarch64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/louisescher/effectengine/releases/download/main/effectengine-linux-x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "effectengine"
  end

  test do
    system "\#{bin}/effectengine", "--version"
  end
end

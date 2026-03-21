class Effectengine < Formula
  desc "An image editing toolset written in Rust."
  homepage "https://github.com/louisescher/effectengine"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.1/effectengine-macos-aarch64.tar.gz"
      sha256 "862bab0c0a90a35786acc7b3d021064f6d5a630c9ccf160a6d3f9452e6351251"
    end
    on_intel do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.1/effectengine-macos-x86_64.tar.gz"
      sha256 "f6eba80f545c61d72388c3399399bc7c43dc7af145bd9d9e0e931ec9a14af4eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.1/effectengine-linux-aarch64.tar.gz"
      sha256 "a1f92c3cf8f28d61ed6ffa5f07c9ff035b8d41e476df6a5099db5f8c3d5cb48b"
    end
    on_intel do
      url "https://github.com/louisescher/effectengine/releases/download/effectengine-v0.1.1/effectengine-linux-x86_64.tar.gz"
      sha256 "feb24d24fcb1147c799abde364d31e42c83dbdb2de5ddb78889cf132b6e3940f"
    end
  end

  def install
    bin.install "effectengine"
  end

  test do
    system "\#{bin}/effectengine", "--version"
  end
end

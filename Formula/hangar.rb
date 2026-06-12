class Hangar < Formula
  desc "A TUI package manager for AI agent skills"
  homepage "https://github.com/louisescher/hangar"
  url "https://github.com/louisescher/hangar/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "49ccb17b29bc232e222a45456d0d6f23b106a23c55795d1973b8daa53b304aac"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/louisescher/hangar/internal/cmd.version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hangar version")
  end
end

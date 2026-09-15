class Hangar < Formula
  desc "A TUI package manager for AI agent skills"
  homepage "https://github.com/louisescher/hangar"
  url "https://github.com/louisescher/hangar/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "03481aa0173ed7144bc4e25bd6d2450a666a9e29381fae9b2f611b1388946336"
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

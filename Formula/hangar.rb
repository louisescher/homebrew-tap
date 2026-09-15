class Hangar < Formula
  desc "A TUI package manager for AI agent skills"
  homepage "https://github.com/louisescher/hangar"
  url "https://github.com/louisescher/hangar/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "29f08f20d9a3f425c91724d8af8fc3e79ff88293ff2c34d490e3bb961e0ea674"
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

class Hangar < Formula
  desc "A TUI package manager for AI agent skills"
  homepage "https://github.com/louisescher/hangar"
  url "https://github.com/louisescher/hangar/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9523fbfd7ea4340cdcdf882ae3b490e5169394330e94221f4b28fdac019e38f1"
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

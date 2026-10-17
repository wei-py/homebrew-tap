class Lazymise < Formula
  desc "Terminal UI for managing mise tools, versions, tasks, and environments"
  homepage "https://github.com/wei-py/lazymise"
  url "https://github.com/wei-py/lazymise/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "b109227a68681277763bad652765349a6d7739c0ee126daa7ee581e2c4586e2d"
  license "MIT"

  depends_on "rust" => :build
  depends_on "mise"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazymise --version")
  end
end

class Lazymise < Formula
  desc "Terminal UI for managing mise tools, versions, tasks, and environments"
  homepage "https://github.com/wei-py/lazymise"
  url "https://github.com/wei-py/lazymise/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "bbd37831fcbe9b600e7de2c88d8f53467c1b4333a970281b4cd9a1421adacf8b"
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

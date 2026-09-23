class Lazymise < Formula
  desc "Terminal UI for managing mise tools, versions, tasks, and environments"
  homepage "https://github.com/wei-py/lazymise"
  url "https://github.com/wei-py/lazymise/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "8e18eac2b44ffaad40419a0b4e3062d34d5d3637f6c467ed986f7dcd1b4e1f48"
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

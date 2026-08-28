class Lazymise < Formula
  desc "Terminal UI for managing mise tools, versions, tasks, and environments"
  homepage "https://github.com/wei-py/lazymise"
  url "https://github.com/wei-py/lazymise/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ae4806065b203d896045363bf2ad583dcff066c905515c29c3047a42b2e665e3"
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

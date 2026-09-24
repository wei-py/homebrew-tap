class Lazymise < Formula
  desc "Terminal UI for managing mise tools, versions, tasks, and environments"
  homepage "https://github.com/wei-py/lazymise"
  url "https://github.com/wei-py/lazymise/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "aa6e4b32a42e56cda7789d10308e93ac79281edba9032db782c4c26ec50a2f0a"
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

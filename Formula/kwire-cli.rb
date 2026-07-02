class KwireCli < Formula
  desc "Terminal UI and CLI for downloading reading lists from Library Genesis"
  homepage "https://github.com/tanghong123/kwire"
  url "https://github.com/tanghong123/kwire/archive/refs/tags/v2.4.4.tar.gz"
  sha256 "735ccbf1e4c6866d4ce8c908b25d4e10793b7d15132d089eec1fc8c4f76676b6"
  license "MIT"
  head "https://github.com/tanghong123/kwire.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/tui")
  end

  test do
    assert_match "kwire #{version}", shell_output("#{bin}/kwire --version")
  end
end

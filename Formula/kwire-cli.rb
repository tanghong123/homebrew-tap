class KwireCli < Formula
  desc "Terminal UI and CLI for downloading reading lists from Library Genesis"
  homepage "https://github.com/tanghong123/kwire"
  url "https://github.com/tanghong123/kwire/archive/refs/tags/v2.3.2.tar.gz"
  sha256 "2ded6007a1bf1477cb57218aaa483ed15eee7fa4cad6919da81af204751ddc7c"
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

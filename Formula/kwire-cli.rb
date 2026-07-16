class KwireCli < Formula
  desc "Terminal UI and CLI for downloading reading lists from Library Genesis"
  homepage "https://github.com/tanghong123/kwire"
  url "https://github.com/tanghong123/kwire/archive/refs/tags/v2.6.0.tar.gz"
  sha256 "5f2296ea8e644683f8b087cf895066d8d0dbd56136988897b2fb7b0be2fa0ade"
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

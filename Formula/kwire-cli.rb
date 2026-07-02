class KwireCli < Formula
  desc "Terminal UI and CLI for downloading reading lists from Library Genesis"
  homepage "https://github.com/tanghong123/kwire"
  url "https://github.com/tanghong123/kwire/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "5badc2cb49dc2c63dc1c87905caf19946c8e8974eaaec3dccf1043da005e3914"
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

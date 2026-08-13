class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.68.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "46126fbddcc4c69affef13e63811e0235adf841c620a74ba5aa2fe99bc253ba6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "366e050d4d44a48dd8fcb0133d22ba2650fe3e04f2936564b0c9fdb9a3991840"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a14011214930b0767717db2b7b964c034b5c32fec71effd7ee5776fcb361334c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "56885b19175ebf3b7ebea3d9ae10f015dcf1ec7321181bde4eccaf0c73f5184b"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end

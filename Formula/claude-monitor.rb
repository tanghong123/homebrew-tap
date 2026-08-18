class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.93.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d92c03599a5167ff1f8badaef30af1a6f5d7f8c82303c9e04e4f1352646af07a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1e76114b9b193071cba6b22fe7ff5b7af3e1296cbd6bebbab9becf016d3ff9c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d16104050541235f94eba3f96e000bd9929bfbd3462bd920af1196a4c70032c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c24ec5a44f5fb84cc760f74f4284ee8fa8d521d56f59d6ac1712ba1a8aa7d0a5"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end

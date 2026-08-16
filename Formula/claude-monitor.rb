class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.85.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "875af8f276e00e9e61626f76e75ca7c3aaab0f423176dbf0958b56ac2d77fa3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c1e756eaeeb07b11e02f7222d8805feae36ade6a2ee3dbcbda8596dcd43a6a12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d19b263f5d878863e9a90a2a1eefe136f930850ef3495453f07dfaa81513839"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3105ef4c69c0bc2e51ccfe52693dc1a27d914dda2d130c9e48796533d934ce97"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end

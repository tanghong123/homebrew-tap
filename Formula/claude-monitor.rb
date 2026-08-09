class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.58.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "077ec1ebd8e82737aed63d1f78398af643cc114fc12495c78eeded019f99e0c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8aeffcea07197d3d71dcc0ff414dbcb0cd44302c0bd5441a65780f3a487f2a3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c38bf4517f0f0297075417f45a0337d5d818be878a4e460492d0920e9e1f5189"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95cfdaf186858065ab40c150af86b98e47b364a77da61b5bce1c487092c53370"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end

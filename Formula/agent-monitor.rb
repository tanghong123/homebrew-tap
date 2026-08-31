class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.121.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "be3ea21d73e22cc37650d05855ba3e18f05e1a0ef2281b8be2e41c39974d7ffb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "08ae08d631b4a9bfb15a0f4818c09e2e42a52691fd3b4da48dc2ffbf32f8e9a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a36bb70aa8b39924681ae5dc16f32096caf870f7b07823ed117da08aa1a65ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77253a55e5d4ccd196ada34bed645be5627cbbf582ab035a51dc0ebdcaa75176"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end

class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.263.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c1b3bf39cf0641490b3284a3c84e985385962a5e9074677ee8f4364b698f12ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "aab950bf549200818ab75b057e9e6df764c77d2b5d35dfa22e3ccdedea789d1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4b6d5de02ed80d31069befd2ffe39c5dc906c8b07902d061f4fba1858781e583"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8b1819b3bd8e9d8a5f4d419e46ad763c312302da83c2b990b970751083ded4f"
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

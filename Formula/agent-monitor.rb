class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.179.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "885effb970f8df8ed59c9a5656aaeedfeceab5b33683aed6778793984316b62b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f9b2adfbb72fdc0f2b65dbc466ede6608f9338dce74cf6a8d7055468260ca657"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "897862ef0d5c4574172605a0af5d3cd9c00ba9f63817fefceacddb9684f22fcd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "772c30002068832f32a405aa5edfbdea198099f59772ef2a8add7912287812a2"
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

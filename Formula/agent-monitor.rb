class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.426.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3a48277b7e1c7285b96927d450e13177178604cab6cbc13ec43e9e70269dbc3c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "667733b9f1e098d44feccf614d07d64a78f26cdbad9a75033a27b0eba51161db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8611958074eb5c0a6fea876af5c66531147cbed30800ca1226260f847879361"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f0671ae64018ae91d79f4e60fa0768f75c131b346f315b9d06ac7f40ea52764"
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

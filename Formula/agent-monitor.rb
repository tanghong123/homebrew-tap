class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.431.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "40356ef0f66eddeb4175cfd2a71bc69029a63a62959c3f126a20582ca4416fa3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e3125520d4857d046cb3049196b7061e12163344d3c44c98b23339bcbb81d85b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bad5e1b6aceacf121b317e7dc9c9f3605ced60edc75af84b27faade0384a6f67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "514984e806920152d18e1166c16db1aa492bb8d95a23504bad59dbcb797fbc12"
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

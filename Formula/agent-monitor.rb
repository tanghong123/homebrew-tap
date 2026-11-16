class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.528.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "01ce11f4d9520dd6466735776f30a0f9ab99997ae35160f4c862c05d517113de"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9cbf68f9fa526f56efddc48b358e8ab22db998c64c4a641c8dbae374d137ae5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a325562caebd74803b96ad396d2ff408f8bb5bd81ffeed9014eac7690a0ac536"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d688d5d6c023ecb46bc62eb3ed7abacc1527b9f8c0ccbbdc8edaf5e479b6fbde"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end

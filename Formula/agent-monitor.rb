class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.208.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bcaa60d33969ff4730be353d2549b9c621a13cb181afb40a1d1fed1530e36558"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0ec86f58f21dfee73bf31607744cfae5f9f7de03c4381254d0950388c0ca2d58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52669bcf856801597f0d3f3024e13b82978d8afa8f6ae4fb7ac9d9f61650df8f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73d3c2c116213e707e40757c460cf15449deaa656756125bdbcbbbd57a9aa0f7"
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

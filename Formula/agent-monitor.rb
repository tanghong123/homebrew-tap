class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.494.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1a4221f6261cfb9a76c83529fcba013d60b7d57ecf7c16f7094928fa974ef8c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5277a512ac58def979b8d84050c84042cd64aa3435d27a148a58ea6afe224813"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0627f1c70cdc5bf4d1c34183d499074108be7b52c25a1d04dcab31a3b1b6302"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bd05931f2cc98ff3f2652658284461d0bd40771b869b9fb8a9491776fcd090f"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end

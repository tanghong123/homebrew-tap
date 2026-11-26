class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.572.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3121e806f46670cb235ef9d6bc29bb2c0a5fec87c60498ad6ff5877dfb11b923"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7a6badce1fb3a110096252276c6fc3bfd0a14f592ec84bc7d8ddc1c4df8fa2b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d60246b0fd83150d7f51659a641ef99ded1c0be569be005afad8a7f1a04691ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b90ca40cc73fb3bac5c37620e2f0234e85a5281944a69c6e013eecaef5dac99"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end

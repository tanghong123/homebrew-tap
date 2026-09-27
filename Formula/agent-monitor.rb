class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.319.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "232ee52b206a5fad2f74344cdb6248acfbecbfa94ca7197cdc0534036677d30c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bf6eb1bc9dad04a425447e72255f3ebc73a3008648605f7948f1941074d25d23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe133b9fce9864aad1407a3c4e9df39143e4c384c263c1d2f37af71c081b7970"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5428e9b160902a51fb76bb7030078f1a0c304dfead8d9d7b05c29940b63b454"
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

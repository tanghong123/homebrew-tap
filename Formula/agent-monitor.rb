class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.139.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4634307f4cbeb5e48ff545b524d6ac13dc16b7d173a9d09fd73a4fceb58113cd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "961cd54cb5d0667e476449f18f9b39bcc418befb6a0f34e574857b96c2aed9a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e90f27c6d966a53ce20d45ef2b5439beb637684219dcc01000f0521e8709bb8e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad078d2327f8227136addccc170eaf483da775ff6791d5e27204166233adc9a7"
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

class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.435.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "16cc793f04efcd0a1c1e51f3839aeb5f0e741196d98ac152c0f4fb30b2b5a69b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "905ebb438c3ac04207f54c6cd5157538ab54c74424151b1c45dca1ff174ab9c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb2ee961f8be8228d47a4e5fb734d69df00d6ce6bf0a2d4e4148d18369d398aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33bab9aefeca59342f93c2515b1e0bff4c0d90f0d32461d8f74c93c6026c88b7"
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

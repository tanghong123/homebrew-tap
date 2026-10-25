class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.419.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0a4ff4eb047bcc34ad66382585dff4090c06d00678b88886ddbde42b90298775"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e82e5ba5aaacf336952a3ceb3f1a3dcbb2b7a76a67c8e52acf24d6d753a3c0ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c6b696a7295983e7caa5cf7279ea99be6bbaacce76330c74fd32c13a6594db9c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7f69947c503a8bac7f0eba481fba2517fbca6c8a9157f5cfc7dc128710b83b1"
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

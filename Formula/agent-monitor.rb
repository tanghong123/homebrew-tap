class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.221.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "98c91c5799bd0d6a3a8352eb8612c4d9565a36b570ded09e2f7385a2574547a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "722633077aa27b82dc72e733a2a6276cf4ec9ad6cb94e5726f2fbca42f928a2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c092888a6d9ea576dfd6504e047707b8c0224fe42588eefa61692da42d9025f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c14d6802fd6d493eb60489adbf8ba62951b5772c28b6d6358a9156aafaa0d61"
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

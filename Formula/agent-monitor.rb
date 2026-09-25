class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.304.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "52d09c4c50ef8890192b1567cc4b4b3f64e0ea3774616aafea5a2e19544a20b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e7c3fb9226c77efd07439bc0a8513a7f2c13c83484a0679e129e5a7a3c7ffdda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "568d661db03500a6951f73eb31802ef7a5e69b32a20c16049ec6ea4e8421096b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3936c6b2255da8a964c473c39cf542d4605fafc2b934fa278eb6b4dea65358b8"
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

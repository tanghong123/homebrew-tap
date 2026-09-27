class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.318.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "41abdc6fb732cc43cb0ab1cea63e0e541b93814ba4534ae2e72dda6a9de50a1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ba6dffe2d8fe2a2d2b0ac0b0c42f5cf7b9cd7e27499940c936e868d0a6574787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f0d4908cffe014852f17763c9955e5f41e9d6ccad8edf4781c2eb17a7800837"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1944b960f5c1a7bdf727b84700918ad93fcd43fc68f829e80fb771319911b55"
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

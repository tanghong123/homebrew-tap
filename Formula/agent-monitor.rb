class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.446.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "58e7ceda9d86b63d452dbd98afb3f498a36f121371282c7288f10563b10902b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b829262790075006fb3f869fdd7be2dcd78c2460bc287531652385ad5b0f4219"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "715f9e11a64a06699b7b19fc09cdad7d31d1705b0c4b981c030a653cb0c56d01"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68a68c150d684ef2da6ce2e243cf99e47e296772f83d44aa5cc6feaf5149fe29"
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

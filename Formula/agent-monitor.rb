class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.363.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9416963d299ffaf0928c9434199e8779497f08491c8ae24573b52ea4145a7393"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3e05cce9ea34fe61b414d980f47b47782b0f2afca600049b1cec31375c0e7f66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31f0910a51f3818a857c89f703ebd2d57d86930115848903a2bcfbecd11bcb58"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27630661047d6cfe5699636854774ae7faab936cf983ab11b2213943e8618fe0"
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

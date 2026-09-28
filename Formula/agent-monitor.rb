class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.321.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "40aa0f66a50d16c3d703e1aeb36f4935c427e14614a567499714598ca6f1f0ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "be533ae3eb06c9f71310cb37f33e9ee7c24a941176cd41d3ab5b08e107fe70fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3bce3843de1dda455d4f8934abea011a6d6b51edcfb8defc2dbd6ad9f4db3ef4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67e1d0dd3f33968befbac7998b94f0b988bf998305eeedb14016e016c4274105"
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

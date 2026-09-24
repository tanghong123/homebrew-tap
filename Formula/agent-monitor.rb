class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.297.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1b82c2b8e7905e29c9d1f6000c9da9b315ff5bca11cbcfd9df51c304df518c7a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e1c2d48d387a38f4b85b878e4593a9a8cfcedbb0491b3d07d1187eed5866b60c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5f685098a2e5557dfb87c5c58e59346319c554fdaf7f0ea5d7a812d79e3892b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "484b7d4b428b4d3b1615896c444b30129ea21931264d492b60f30dd527b5f85b"
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

class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.348.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "fe75a02d55508d59b2794afec4f3fcd66108ebed47a2dae6429a5b109973305b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ad4b2f86bb63558e5807b83a4bc1bdf8e504cfb764099f9dcdea1a70fb374663"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b3d39f16cb0b3e5cb536f151be77820fde9ebf21295687b89755ed01bc1261c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fa5b389262cd22b8a643c776399cdb7744b0a03c9d4e8f4353e49dda7e1aeaba"
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

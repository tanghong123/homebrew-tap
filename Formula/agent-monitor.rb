class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.454.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9b5e85ae391feb9db41b5bcf1c0bca4eb9ba5d527b95e5ca501c44de2c33b524"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7ab64d5558b29221ed57038ace96f3f2b5485226c73e79f56ff631265a6959b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c253eee08974957d2e0e45cf6ecacd79b72d69cd54863b08ac64287bc5094d67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f32eaf21682d70688d174c4f53ef3d3f6151f50779a9a7aa0c013edd247c7cc5"
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

class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.403.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6c28f9c005005624a95c2949e9e913a486cb78b52ff637c1a4fbd7d834973749"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "78224831b89165523deac69d600ee924b8300f57e2394d9b9a8570141e6776f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e9e879ec09c95e7b8ce7bd829be0a0655c5ba6222199a3996d6d3f6cb6b71843"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8f5a451d44529dc1efb8e81bef451b2b1c3eb550faf0ffbe8414d538592b262"
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

class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.455.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d01e4e7d12bd9e825420debd46d906034802a4b90f79e35343fd6222707afc14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "834644f1e0217ed15006c91ff25d2793fd27af281a20291d4c816c8026448e7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b41fb00bd3c7c2d8486aaae7bf8789b46f75b1e2d463465a9fec7af226c87c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1968d93db5953b30e688918d7b8a1c0926b60540b22c67bd1343c3ac0a4ecb46"
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

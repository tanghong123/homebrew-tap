class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.374.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d24ffb89afe481ae9f9b333ef34177c01784f09f42685c7c5b2a8cff2a34d30f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1bf78009dc80883f9774324c476fbba56c3787c7ec800463e13a4b3d28b3e568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2772787c0f33fd7175197ea09c3642b5a4b2d0f3722fce7e7bb90818409926a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93b00b5677e736181a063897e2bb811200b8cc3be301fff7007678b95f524450"
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

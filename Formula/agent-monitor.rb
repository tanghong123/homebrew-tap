class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.329.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "808f0666d00fbfd84b5d0d7d29e0bb0c533ad841a451d8767a448c36679c24f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0ea219fd465c70da19f448373c4e9522745ce746a2dfb1f13004ae5a1bc58ae1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "114b849c79982736a0c8854615c764531a6301f895a21d84d4df9589af5e0424"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78de7bc54393b02afd7674b07ff098b8af5e3e69a2b74316097043bbdef504a5"
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

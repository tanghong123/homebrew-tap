class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.365.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f8f5c0d89121d562d373c29277729dd791ce0c8a6fcabf0b8d9fdb372faeaa38"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c9081a22a0ffc2ee07f16a70532066fec32068d76c687a797b85d0e45233d66c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1a1c43c936bf6032199eb560b837e3f5ee2bbff3795109d17cc282cbe4b96ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a32dbae957c4acc8cc58fc0d30436fef17c379090833341634dda3d53996cafb"
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

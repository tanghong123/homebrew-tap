class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.268.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "da09f477b48d078da4541254891eb11c1ebc80b70ff63f089aa612612fd4de5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4a60a1974cea1d2ee3000df6eed056658aaec64a8a603d7793842a51ee0f7acc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ed259887fa397c5285be7325c76f1d498ea2a0f2bbb3779d93931792538e820"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc2a60a06194b193a205f97bc596dcbde9410618cb8a73a59ab352b1a6555119"
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

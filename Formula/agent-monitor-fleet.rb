class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.383.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f39c1d89f1601c1fc902187f168caa20c6673ede974c535ef0450514cf35aa59"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9d314a2421450471e2b226e1ac69bea5622b42a4338026897b7b2ffd7303c59e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d911077565d7d55e61d9e60aaa1f3a9e0de3c8bec4cee95db9988fdc59062ff8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d7f9a3cfab646517940b94600b8092c384d054870199078a395f70d2baaed81c"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end

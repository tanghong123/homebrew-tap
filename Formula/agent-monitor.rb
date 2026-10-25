class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.425.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "497de6f1358c5eb34932af006cb2a4c623232f7e5c7095f8758783da7571e2d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cd4f24e1de084b108a362a214dd2b2e1fdbcc47c0874f57fb82eb0b662ee1a83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26aed9a34fd9e429df750740e9a72557419e146e84ca2df2a012f29c35344aec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "208a33353c952a40118e3cd0060dae40b95179c2c3b0510b1d0de85a38cc83d0"
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

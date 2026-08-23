class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "397441e6502369a2b5b78307fb2b68d62e660dc6771b7d53376865c0b3d98ad7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "571c4cdba9894812c4afc3df4524d4cc24af6d26eb7e53146934eea6f705a69c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de47d6125bbb8d01d7676810507dec55a90ce43cc67d7e4b3eaa2530ba465c65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b841cf5f6e53c1d8f1a88d76956b58d4114334ebff538c74d8bdd00feef82df"
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

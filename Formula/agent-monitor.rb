class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.296.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "155ade51477e7339c2c98429c1317d64ea9b3e68d25843478fc37b8310741bda"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c1f020a026120d3ed7fa3e022e90088ff2dca29df35cbca8d5ca80e3654c6789"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b96bdbe41cd2990148cb45f763cd634723efe42b4417f9d21e79f482b69fccb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f76bc8051529d9b1e1af9a2bd0c4785649828eceb355a15e88e5ec7f95354c65"
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

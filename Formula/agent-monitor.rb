class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.406.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4bf0a0f851d6ef9e56545b533c0532878c8d0a35bf7dc38a3791a0970624e80d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3dbf21cbc34782aa9a18949317e13797f5d21e2778684e7ef2623a3220ea3e41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d419f495d2ca88cfc375ffd4194fe9165008eea8d10047349848f65fd9d430bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "faed7be0c0a7f776961270b23ca25ffb4fb74b82222dba166b8877c8a3b72a97"
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

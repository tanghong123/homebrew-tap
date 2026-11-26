class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.571.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3a01e450ac9bb08ad5d08920bea3e45b024fe20e4fced971e27a12c79e21281a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e5a9a7a42721e0b5b4f187ed99818eb399128f5628f611dafa739289c25e9d64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "62bbe12fcf925f0c620f164ec11fffb4cd006e036056c4b6e987bb4bf2b897e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d30b7563b61dabc9f8e4faa257bb8a96b4e234ad7e8cae26b44a5450fa829d36"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end

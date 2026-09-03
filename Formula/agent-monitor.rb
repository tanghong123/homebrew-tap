class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.134.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6ab0ac60b4714b7c6ba9154ead7887919cb0afd853fddd79a0e4e9bb5d2e86cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a6ce0af3e48441866376b033d7695afca473a2b9defd095fa9afc8c2aeaa92ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b15a0305b367fb59beb09c8cf50ee210aa98d02e9fbcb6677a781dbc4f8636b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac435ce9be052b0ed498df274453c387b70572fbbe7eb795af2d7e9cf88229f2"
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

class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.274.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6840f9a20cf809d88a1749d87434afb86614ff50e7d6fa40f223338574e0e44e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ff1af5da019918cfb92ad0bf06f02a0fa3ce202111e589316445896a783a0962"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8e583822d553211c3ba2c7598da3f1e08681bb899962a05e73322a5f45f7e913"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a5a43eca8737cd44e60b18757ce6baecda507a740324285c90b51a033e98f3a"
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

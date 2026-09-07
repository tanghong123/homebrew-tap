class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.225.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6ac6c43066bf8294d3bd5213ad2ee9acd56dd5a93e44e51774af395c6b5158f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "520a7d6b6159d3fe47363147c1a6e8a1e15c0d2c2ef1f41321d0e4781b888002"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31979e42faa0370b520c9518e74619da345a6aac6561cb10f39de81321063ccb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0bbac2d38fd3d455a938dfb1fd86446fe0b472a2e167cb1997f81152a6964fea"
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

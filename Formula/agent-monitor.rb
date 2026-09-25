class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.307.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f45afda9780316d5b95ea8b796e944685b79c1e3ddc26f7f40eedfc2e0228084"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a94933307f0e63dfcc1d3740f064b89f01f84df2155cec2b781c5748a6bd6222"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab326c572665ad9c3473a7bc6fa7d520cc941cd9b005f26bfc4256d5983b2098"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9716e34d442991891d2d558f68c8ee4aefbedae776d38d0c5687bee3858f9382"
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

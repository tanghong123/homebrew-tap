class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.418.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "92368c71b08e06b4da1ccc12d4809059101029281e2ba832e7164cba4375851b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cfd3dd9889d572ef93f57074b31f326bd8cd144a16640545e931be66e0f24d3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f18109edef5bef3cbe5c6656519d5811c1eb28d0aead4b166cfc96f225996d14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6736e90323d10dd5f8244ef0eb903a7d13596b3c33f9e40e7f4297d1bf01fc3f"
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

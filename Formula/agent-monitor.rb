class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.175.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "fd15af5077d18f982e34d3ba3ad62e9a32566dcc1497557f4cb1ea1ed2fd3097"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3f6696baf03299c86b1a555303f3c6d483f8bc4086324089ce31363bc1995ef7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9589980b2ebb7fdb32b4ae57e8ee36dac37d15577dcbbb5f3bb910b185a2406"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f459c226b18655a2bad4bf319398f986b0c8168f3a87a5c9b840d544793bc728"
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

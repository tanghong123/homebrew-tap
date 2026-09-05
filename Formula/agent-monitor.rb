class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.196.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d4aadf45c1b7165c8853657e29af554d4ce32340c0a0f4b3dff26cbb181394b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6481ae0043d2b3f6ab6941e4878423af5a2226981578c24c1c0640be1ac106ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab662009b7a140ae4dc04d57a756eb9bc9bbafe6a492e4d270d85574579fce1b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20efed7347b0f16b59ca02b7c3cc71ad7a7f86e5aa30a5dbb25ffebfe2153933"
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

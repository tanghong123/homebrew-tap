class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.355.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6a17a057001e10e64dca0e6c72bc96440d4660566ac53441824060df640476e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "24ae07b5c32930ebe55d8202e8c9df9034cace6b56d188ccd56107597866c969"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98a5a2b1552308d5c4847a67bb9fd01d4bfe02d3bcd81b026cccb82ef0a18114"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "141f2635e3c119e03e2116f47d424a150c3ff48be90517fb305e93f2dfc8bf95"
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

class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "52962cd92a10ce5a989e5be35ee7d153cd5e70f9d3b0de9bc56d24b7fff31361"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5f7ae245470652f8516ac38867b45926ba24ae4f0d922b0a46b42e570659c2c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23f6b4c43ae24d1ac04e5c81f58d04ed25bfe6c04ec54c008605773d96a25803"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36edfae36f5151359eb1c34589d5990f1920480e9b8a8f48875b963d7dc1b797"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end

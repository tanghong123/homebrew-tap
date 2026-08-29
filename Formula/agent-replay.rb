class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a42d4cb179905bcacd9ebe1b76bda4119f5905b5d42e0cd5455d9fd184c69080"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "884b8204789ae500de19e6cf33a54a0a9b5c3ad1234ce464f9004e92e1a7f91a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2fc20214257e4636277a5443783fcefda15cef7e7d37f02f9d40ed6c40e23a0b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f739f46401a0b53b34d8f53b2a2a07fb21043a1e3de07fb640ea0889f90ef118"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

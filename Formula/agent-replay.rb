class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.439.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "28138a5433fe44d7c95fc7b1d9fe1af7b0279d5c3f1e63ed1106626a7a8a94d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e4a5777b3f25cf549caeb1810050afe08bfdc9472f22e51b9621b1a5e63ece39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b957f37fe5c43c005a90e50898fdd77739f9c6ae34a3e55e3d348d6370c3289b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa91335df0ab27f4229375f900e2290fbf191408de8c37f947a8225ab1f6c78c"
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

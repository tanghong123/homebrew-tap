class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.134.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "48c85810b20c5d763dce925afc09925d7afc9ee1b74c43716b2de7476b0d244f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a876ca2f439f373ed6572c8ed280088a3cc60e75910e390de05e673370bf7c55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "488090e793b19a8abd0a0b6047fde30a681d1796b54055dd9667646e5723c077"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d42e8e4f27e038e2726c9a73db69d8f75cf87ca7d5d5c4d6e4037124a22a6d5b"
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

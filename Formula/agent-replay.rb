class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.182.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "10d23b28112b50761932643e7903901e1182e8dce611b820dd8f8e50ddf8d90e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8214e2ae97b8f086654db75e4ef4020b119d38351c0df96ab9de2911488bdfbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e4d4104b56aeab8efb4453a1f7c06739a9fb62fd45789f6c16e89c5fb4c18b68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82cec480c1b49055fd2092823b740761c229d2bd5a2bf60b39f7df4993ca2a21"
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

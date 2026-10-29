class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.446.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "38f9cd5acb6b1dd03d7eadd0ddb5e85640abed6e3c2b04c0075810a55b55c0c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a3e73e7da313171f52ebefa17bdb4025721c8f8416262bb1b064e6724b954420"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e359e2b8ef919871fe45aab316511757a86405911537999a21776c63ad77545f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb36b67bd79bb0bac1faa382d6b378403a4257702aa0620ffcc88899b6afb234"
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

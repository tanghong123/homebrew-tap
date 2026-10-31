class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.457.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5b0bb60a73b501ebae6fff444b5dcb80386166876f5f75d2715e236a33686e67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1ecbc7e95604b8d9a9f1c5baae4115a9288284df220daeaed21977da8729b477"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "961db381bd56cf786a0166d84d0e64e4cc77bee985a42ef4095f2e32911b06a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5a0f76f3f1a4586aea6b15522a8dc7a76665adfa44e65b173da745d697483b4"
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

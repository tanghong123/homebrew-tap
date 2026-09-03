class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.151.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cfb18984676431a2c5b8db9e5c0cd61747ff0669330b9156839d44b534bee7bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "69199ab0ed8993f868f0fa344e597f97912f450ff9dd91b5250b2440faee3851"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13cf4255e6446c70d84c9724a62200ada0342961a721729ea2b5d4aa79fd0450"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d97716b9bf0158c3f177f556886b490ce32d759746a1b9ce0a73423bc287e07"
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

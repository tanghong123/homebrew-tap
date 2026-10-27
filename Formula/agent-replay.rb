class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.433.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e43914c41103898d6d8b8d781481eb2a2c573bb11c4d8d363e9aac218363d7c7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8d7186cca861094186117a4d8a959810d04cd7a292d6aeb9ca3c96b1bf8c63f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "443889e904170b550cf04eb989f92fe41c8f1b837b4f0e64486eb2e58b0b6b0b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95afed95ec2dcfad21e9a3efb086fd8eec43e867dce895f0998dacb9b179c098"
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

class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.104.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bd892c876bccc0487e19c7f6eddbbfa9595a646b0b768bbddc64972b35d47fdc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "972309a2c2ebfa011bdbbf956179df50ccf9af472cff294593233a9d9111aeea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "992b71fefff75e8f610c785bc6787a6687f0c40aecc960491855ce78971819ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7faa32b834f3970134cc5d194b5c5397861eed5ed9441381a14315b873b7ea70"
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

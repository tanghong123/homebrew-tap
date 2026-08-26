class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.108.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4943f69a3286d8f47995023d0f6aae771106fd8d4b62c4c1194c3bb6bf3c8890"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7f8c9a347b3079d00b2b81946e89743636fd8513b65a20f8a097cf7566db4950"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e132a3d28a992701f6a982a03c7a395bb3332808fcc25eb30142ed7096a2d7d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ed577762f87f75477284fddaad7cac8bd6db472f94bbb1d2ff488100fa486e2"
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

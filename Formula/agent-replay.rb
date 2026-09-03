class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.145.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6d22939f71b38f3c8674e51d6273f9b699cda8b5b3afa9f56397a7a4c9efa369"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0f535233f2619ffbd219109d6b7053091f2bd00974d386473b59ff7705826862"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "51364ef698a0a77d50487794d318c41efa663f3a208b4ce8b2c698b11134ca91"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47595a84ef855c48319fc55cc3abc9b1257de93a9dd8b046620ae4f5f887af88"
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

class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.414.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "16f4704dc060ae7f634af4693f855c2acb6491831ed535d220a9bf57a3f5401f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "94c7c49f1d9ce799f83c7bb03e60ef65dec1fad8adbc56f2ad3310ae393dc823"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "089660022b5d9a4c58015f03c811858f71bade3af5ecdad420ac2cddca29b42b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a59b1cdfbc262316697e0f080be234f48c908214ee60c6b7f4435d4bff2f55bf"
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

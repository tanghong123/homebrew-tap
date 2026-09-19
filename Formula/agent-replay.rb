class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.284.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8a078517ec5a01e5636b17c5b0072ee64cc28f3ca9b490039922d9d16c962860"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4e8e04c28d563b7dda2a59d143412fb0e98f53c93e9de29bfbdeb64b7cba481f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "243f455e47ef27fa0bf4de465b9aff7604ea7e78ced4b09a6a67bdd3869ef7f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "704910f520ba5023fbd4e8235657c06a563386a6d31ee44e18db6d3bc2eb1758"
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

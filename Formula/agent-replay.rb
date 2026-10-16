class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.380.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d5554c11280e756c40d8360f5c44aef8cfb203a4d9e3b9fb33c0fcea5d5e3d98"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "aaa5e251d9623eb0c4fbba369d067ea51d0227c8846399d800f5833cf1ad9911"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ac0fda2c348b5a4f4b80199be458eb5e1e45ca59a626ff05028a3115510fd24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d291dff3d217c7025e8f29d3361c4043224d38d562a23d253564da79c8941060"
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

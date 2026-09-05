class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.204.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ac49798eb972928bb08c5eef59535008216c075afa91e1fe918c02a0e79a0368"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a8c47761ab97e1f9dec2699af3da483452f091184a2217f73cc61b28d1f9abdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c1c8ebd7d3f001bf5039d532d97806f264a49b7cef3b1d1b64d11b632ed8197"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b4a6704e20b3f4a7d953ea03b6d5d1bfa4b382df8014ac11e055e712f498d728"
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

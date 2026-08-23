class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fd5e958b9eb9aa20affe5a0c37d0cae977246d46d861cb78f2ba83fc5710737b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8c2a9edd2df566f1fa5c4e5f703b1ad3968d09e04da6bc5bd8f7aac9b3b9d8c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a9a95c88fc731a273f2eabf29ed77a64fade1786b95eb79b56412912c1b50ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d7ca15fb58998261ef39eeeab2d8912fc4ff012e0ff689cb45445a0f5f8aa01"
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

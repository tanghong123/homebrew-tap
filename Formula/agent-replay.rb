class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.126.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c64506612b13011d9ce3494dfb6a67f7146bc858f0cea593237b21719311c80c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "eb2fe9074fcca08bf7b31cdbef0b8e023763c23c3f3c238f967c2aeceda6024e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "958ea5281187fea3e0671a9a3704f0f99aa55de4fa113ceb59727d77520098de"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b286f15c848d7c8c519750c696621c797e0d65072e3a723be70da963aae8cc84"
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

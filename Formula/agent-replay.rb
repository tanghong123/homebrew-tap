class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.470.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0685c50444d472be920eb5fb264c7654854226847048bdb66b05127045ea7b00"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "32a0693363d33cf315338a6dd85e44dd367ad660f3998678c8a18be7c0e1af2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "319e7f198cd1dd77e26b3212a86655022177c5827aee644568735c2b7d0da69c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e56fe060af7c911dd2c2f694cd5b7adfb90aa9458f36e183c58765d516b93a0"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

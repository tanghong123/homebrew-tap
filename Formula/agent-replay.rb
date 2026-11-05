class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.471.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3f2e12be9614e53524159416c9e10f4078a2ebd544e5573556fc0fe28ebf3553"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7f9acb21fa6f6e343d5bb2524c5dea78b42e817e1f2195a38a96b8c22aee8e99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ea44710f640761ebf25b6ce7cd4da3ae09740c55b7b194c18abf1b3f52b19f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6bde053c52891cb254d64b6af351b84e181b2586f26e4861957e7468664b4bfe"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

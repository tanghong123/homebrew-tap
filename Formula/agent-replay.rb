class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.259.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "18a5ddfc1739d91cc8de1665525d116337e5c505118b8fd07a8607cd7378ad6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "73ee30ff16b3c68a947187d222fdab7c0fa1c4dc6ee5e695a60def9c24692b22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ad7255073a23adfb37fb68759d15b3581318e356a36737aedf65c9e5fae17a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fdef286909f1322ad23e7032f294188754ad5d190bf028476a4f518f0bf67f5a"
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

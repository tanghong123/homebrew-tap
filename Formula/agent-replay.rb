class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.195.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bcc5655d84f1e7346d540ca7edacceef9a477b70061f23941d8831b1075698e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "92ac8996dfe556f1fd8ec67908bb0867fb9b56b75802a17dc919cb95aa563eab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f34b493499bc0b4ead46bfdd0a7f59a24379b23c587cbe0a0686047b09cfe922"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c48a8d82e89c0e1d63ae0b9ee585ed2ce29081ea78005fb8b0e4dce599910fd"
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

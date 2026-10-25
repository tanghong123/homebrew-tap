class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.422.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b0f889ec89a25df38a57c3c9cdc3245bb8d3e36bd275ae5d5143ad8ff62f9f22"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "db2f7a00bc9b1431557908cb3cb0d9c14cfe4615344352d2eef89961c68656d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dc3505b0eac9c7c09a2aa3593c2b0f32c0a4c8032da656c94b879e74aa953c96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41f395249b0e693c3b0470f8e6421382af0193542cad889f5349c111b8dbc98d"
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

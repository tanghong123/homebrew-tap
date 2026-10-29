class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.443.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9b9079b58a7d411b068d0fc14547723a237f3af2b3e9ce463d6b24d9ecc44535"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d58fac4a572724e5d0f49e1e49838eef3c1c4dfb953b752b03c298094fedfad0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0537a2f17093d2d1b6d44ba0f7759b138eb415dc9ff5a7cbeeaab293f7edb3f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79cac1fc8e1dacb08ea24233a59984b4c324ae35d7d64b0b5378fa5f46ef1173"
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

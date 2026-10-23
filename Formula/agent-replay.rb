class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.407.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ed7e0be3984426a32d27c50f69fc1010eca79d2b7c41227e8450cbd2e6aa553d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "28562345a5a1ea9bef0f26d42991a5e2727521973cb3605fbfa7354996fefe57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31eff6c834f47b4f80ad8aa95ce10d8c2a45b6fb61581b21d78140f2dcf43b96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb51f72ef9f36fcba6cb40cad4a0cc2e477a6b9105df7e43816857dce39a8ffc"
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

class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.212.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e57724ace55a395a6b0b5b1877ae00b9b0ec219da73074f20007cdcdfc81d87d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1aeac34e0f509a3da08e7aabaff9377bc2b8486e41785f8da5b3a5f2696b4a38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be41ad28b325a15ffa1835152efafcdb1b3d856623047a3fefafc8e05d923aae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebce2373ffc363b1a13eadcabfd7b0b93904cabdc3cdc27367e7b5b0e0420b64"
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

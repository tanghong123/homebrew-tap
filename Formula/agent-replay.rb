class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.187.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b86638fc5a59271c2fef4cbf5c3b67aae1701f3ddb3761695314efd759693c32"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cfd232f023a7665897b5eef070fb5af32f03c5262254bda3085a366d33fa54a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e169649eac1b21aadd1fe3b4a020ea87038d30850406f4c0cfe83c13116692e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd7e0d7e07bd8e4cb275b6e6db97a67af0e516733f5496a8cba0f990a1bcf18d"
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

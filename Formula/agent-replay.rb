class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.303.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "25265dd1436e249a7b1241d08f11161a6cf211bd9a345708ecd63a9a6f0222ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "278fe798096e617d7cf6efb8095c138bc2d4b0c215320a3fef199294f44d1603"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85e3c6a2d4c12c9cba5ac79664ebd744bcf4a1eaf4803753e3401c387bee7d9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c50c92d824fb0f78abc89f14eafa21f36ecbb4cdbeb2de80c0a8ddf4ae2c7825"
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

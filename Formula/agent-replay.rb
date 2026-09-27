class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.317.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "de1a3e6904edc4cd98b7a5faec24592efec19b9c7b54074462d157a0bad5d023"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ec09a40543b0ae5701571405f5f3a472ee299de69b05e504ca3d25a6bfe99bff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d99e7c779355497f6c2aed531f679fb89aa400d46be6bd42d9932e8ecaffa8a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d6c31e4236ee8421db6f9223f32c41ede1c651e2c9ea7b5007595b52db88ecd8"
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

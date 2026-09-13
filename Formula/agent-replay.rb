class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.264.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2dda0d4d9ecce98f9cfbc241783a12ee0e55390f4065e9719b38405e75d6db16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f144b9fdb9f78241f31061c654c69b547a4a6ec66bc2a7abea058601c918ced7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67a600a468aa69740d0288c973f0c1f7e2fe613d5232fc26141cc74514876617"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c80b0bbf1905e4ed44e22385b3e2bb451b586cd1b6c3d7ae56fa298c45cc9a5c"
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

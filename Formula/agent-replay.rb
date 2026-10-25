class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.425.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0871239e5009b29737066d0a3aa21d2b24a805c410eaaaefb939ce7dc1d00eb9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "56ae9764cdb8b17849ce350cd40579b65218f1f6adc584f2e37c6e203bcd1617"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7acd90be4b26a2ef8bf958a8a58cd4760f5b436672cae0d4df2cd5d08722fcf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3fc528082256597b5fb3e85b19b27b142f293acc4775a9c1918bd221c6935c03"
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

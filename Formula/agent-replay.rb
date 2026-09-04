class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.181.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5ffd7880543f6924158779e7529d52619a247e1e6a24afb75e11efa52cdfe230"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "67a1a36da7ccff8073c945ccf76bb4d122368159203644f5cc86f02ee44de717"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "808cf3ecfc0d65f968252afa47c14f29ec17611d3b2336cf9859e106323f5e95"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6bb83db73e0ae2a48c22e5931c334e6299e4644afb827af076663bfc3e6818eb"
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

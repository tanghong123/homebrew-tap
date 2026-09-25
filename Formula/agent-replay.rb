class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.306.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2061a1a03dd478ffb59afe6bf856df3ab253d0c02d93281ca1f36d9229a80412"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8a9b75540234e171deda01c0c96d1f3ffc7aef57a28c8de916eab348730f6757"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cea6ba825ae4dddb4d2d91f0ff754058861aa3bb1dcbe757583b4917d22b3063"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31a13f2bfc6487fda0c6b444eb2c7d7aabb67001b2cc05c96b1af332fc4f2541"
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

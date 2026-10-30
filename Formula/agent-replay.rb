class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.449.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b91fec8f0d333338fbe0f907aaa442a2792a86369010f548694b702bf465f163"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3bb9431834bd16413d1904e1eb8cb8f5cf5b6fd5e4eec66bd8a7977bcce0a944"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d82cfd47e0d1f3220d26c1bd92d8f6e6ccf7711b4c48398cb2647181af1bcfd5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a597b1857c3c65656ccf1f3f104087844e4f2cff8017b12f5994811d22564187"
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

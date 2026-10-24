class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.417.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8f4c4b60b9b33b8366f0a293ca0f82d1dbb24784019b060e94939ba99b06306f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6103c2564f9bd96d8658a57eef34f3e63635df2fe2f285ee724499a09a03eabe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c11fe446b9b83e7bb0d4b1199e91b6061760850679a4b9b1d4a51f34334153e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7631277e99891f33ff385722b8db1a6b090eb8c14facdbb264f2049a6c06ad9"
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

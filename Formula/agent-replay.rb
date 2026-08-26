class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.109.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "345562c25b597a8c6f08f550a7992924bdc91de13eed54a2229de13de040bdde"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1d5c1943ba1d5f2070b5f3558cdd7e28b43f2f54009f952019486fe10322d38e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "27abdcfbe57b030c6a234ba37dec8b41925aecaa53ccc20fc0cd264338e33405"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcea0b42d427c9596fea0f87b9950660f2793035d560b6188ff292bbad345d99"
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

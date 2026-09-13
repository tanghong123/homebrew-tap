class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.268.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "760a35f3f885bd3865f589a9c20a3fd2a11f9e0b3fbcd0ca8f6431115fcba1df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bdfa26f39be34c5547ee52af3f2a95af1e0869d41fa381f3876bc157452de261"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4596192b212ab04cf20c068a4661abe5f66f8b9982904ac73904fec4565956cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0eae7e6d0f3f15312a9ce6fe34fda24806f63f782eefb86cbff03f02773b6e4"
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

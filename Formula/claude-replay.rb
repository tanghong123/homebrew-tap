class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.35.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.35.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "01b48f33772215337bba24b3d20ec203001c07a5a1638a4cbf438cef8d5d4d1b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.35.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "70288a63f83cff9c80f2a4457f32bdf1c5f24f1aaedd9e574285161b3ba869bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.35.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff354b3cafe77cbc1225128ce9047a027d3fae8e5e51fcd4dff0e549a8f1d31c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.35.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e640661614303d15ddb2ddc15fd77f7f84b48c4ac0c70ee4119eb6f6e97719c4"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end

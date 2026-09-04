class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.170.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3bbff65f515d82abf74fe5972e1d46d1adf87eb5998957085663c49d0b994670"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "feec1bdb7eab06c3b6e1bd92bd6fa09d09f079bb59d7108f6e64fd2cac83ee2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4037e735fae03be9d742d5fedff0e507df46e26e0d5317b6b5b0f4de76695537"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7889cab0d3750971996600dd01b15b73670d6ffc78e0c8919df376ebe41277ce"
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

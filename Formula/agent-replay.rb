class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.183.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f08ed94666a4e628a2ba3c8076d446a1f2933f71d3943b0cce57c3999074eb25"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0bac29172233bcce76e8711ff5259f2db5acc470509a2db8397d6c2d31b4392c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7f43655189d61873353910f34f6939e79ce4962bac20262594751334c294522c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fd59fd89bd437a18093b3d504cde5d45aea467467f1a063afe74c4f0a7c89e7"
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

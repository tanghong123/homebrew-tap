class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.396.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e49881285340926c030ef1a6c6f2f5dc0ccb4c9da2b6f095f93ef3197359da3d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e41a73547fd0e7a01aaba7fe4739b3bc1522a01bdb02b40419720feae5f73f39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25789bac1e95e150a4dda6769f22812cca38d6c42eba7bfdae4e6451e096c31b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c0dae0e4a55f2a9d5ab27967632e5ec4aa05ca0d71a2d7a0aed8ce0bcbc78683"
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

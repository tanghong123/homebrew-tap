class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.355.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "45c540ce60a43733192ae9e59d7b9efbbe487fd1789383f53622c2bf0e73a5b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7b39e1a03195ab034ff92d8805f6cf31483c7f9907286e18c14f328d9b47f33e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3f314a21851daf84ff45bc93e640cc86e0bf14b6f351391b13fa8d776289773"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d60da404ad1c17865d08ba69891e1cfd288d82eaec87e0255aa29e9665b468b"
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

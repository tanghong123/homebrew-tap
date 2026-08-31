class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.119.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cb34cd34cef4a1ddc6170bf8ae32edf38a5f723469f8d945162a4bd366333921"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5dd9b55661c789dfbb2b4af568ddc31d48276ea1e5cb04ce3be59d3d4f7e0d2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5fc8cea4516b838b43acd41f7c5305da89ec4e1c61ebd7215d8bcd9eb70f49d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a81c8eae80d090fc4301caff00ceb6adff2d658f29dfc124be72bd8a3744d2f"
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

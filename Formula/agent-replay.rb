class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.344.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "072d1e862d5647e194bf7ba18e33c5e73dfb528cb0f19045735ff5694d0c2ccd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d71f477544c78afed5866b2f309eee1fd10dd4ad686dbd8873cd5ed69a8715d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0d3382b43040e86a7cd7b11e78f24fd9413af5bc5bfef58020147a95af68946"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ec205c182d3f260cdf68e4278052c3ad53c725a42379c385826cb4fea025e7c"
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

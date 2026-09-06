class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.219.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2b1f0190b334ec3bb0328c6f4bf7551f35d9445a41379b08f5121fcec7d413c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b91ba44ff0bb8cdbbb3aaf5147bcf733fb609b696482ce14b08cb92b04486640"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df52861831670d6d50e0a53ae57c3f72e276d7cbba4f921a11e9d4788569089c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "faa3a3769e4157d717ff490eee0a13a6a6e004ebf467becc2d3074622cee565d"
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

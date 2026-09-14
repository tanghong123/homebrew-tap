class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.269.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2f0a18925ed6869082353ea9ac64ecfac0ffb53304eb31571117fd0a2aa11482"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e5e3d76936a771aa3154d5fd6ac55a3e8c0cadf5be5c3a342891c8e5179e8a47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46208a1a01884bd06e6486ccc31d01dbd8a1ceee966c5436773323aa1a2d6e79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac6b2bdb2a5c6aff7d39f7bc85d6f4362b33815c03e640c805cd2e942bdb9bc1"
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

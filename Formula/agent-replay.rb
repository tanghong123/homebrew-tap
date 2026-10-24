class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.415.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bc4166d261f5cc90569ad71cf10dee6ca046c9b39ca5308d02b2ac388df78d0b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b88b38f77db2a7c978cbb3c1dbdeeb25b7eaccc3b2624ad1063d16e1f81a8545"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4ff6b1c3e9d951ae098baa8c64ff8b8eb640adb8a193005b275fff9c0959294"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4f897eaae1f7524357702fbcd48af47f0105d2f62b309dd9ace5f8e39751982"
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

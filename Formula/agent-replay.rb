class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.206.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8d4383d376e9df4c46af6fdece8649d778f4385d393cc4bb5f2965e11bc9ff4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d028825349908d1e7a94922f09d075b3c64283e22d118ac85e35b012c5fa9260"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4c39ca75a50ac9abccfe42bbd7572be3fcbbd7ff2b8b572a0b88c2940f3f40b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "266a8c3da1b106d4648cd1e398904bef812ddf88d3d5ef5c06902483722eda51"
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

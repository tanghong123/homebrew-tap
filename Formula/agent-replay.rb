class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.248.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "225ed3d731a218780f260e1d0321095a5b94c12d65932929091a6b9900518717"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "06a324e30f503dacbc33ecf47e8e1884046c709c3ce3b3a1be0fac7a6cbf834e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07e9f15df5b0bc762b5fd1a0dcfadc6f2c57e2328ec9844c89b05c8d24ac3ac8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5d146693f26324b41e0d28e0bc9c757cc44537bcf311538f9f62e36637e7f13"
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

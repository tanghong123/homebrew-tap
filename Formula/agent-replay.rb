class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.292.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "04c12618758231d617f07a2f16b2ee54c4c75079ca5b65b8b5cb9d9c53c50484"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9ad21a0588b997809a68f4938a916128d27aefcdc5e892be82a63b63342e5a93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5658f093e343990c2e169b544953ace210081b99e547fe691a40df426970f0a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b958e899a759d86f342840ba5edb181743e1afd0add8a1ea84b310b43723c15c"
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

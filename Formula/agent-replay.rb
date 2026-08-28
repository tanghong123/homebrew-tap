class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.113.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d6f623555292b0de72f38725e060aab2663bf61fd318ff5369f974bfda873df6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0d1d388865e6f84cf6cf387589e541e256d0703a283dbb25ca4d38a6aa9b88d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af407b0c4759c14f3b5a5ba23f25b75d39b320087508dfb9213152541c874cb2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "23652f26a5ad5819fcdb8870671d24c7796c4308da765b95394c7949b5f1892d"
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

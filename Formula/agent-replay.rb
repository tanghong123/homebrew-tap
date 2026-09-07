class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.225.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6f1921075b2905d6e1480db7e73acf36f060c563936298ac5a0d4af4252fa1e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "911efe5435366da1a800c2283c8451e1e9e27603df244d5da0b882a04065d782"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8baacf2a295159580497eb736853c83b75b65cacf518e2620697d9b8b8dcf90a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af058e41d622f14015c7473bfba99bd7fd99f04d77d76545fb129ad55fd8b73d"
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

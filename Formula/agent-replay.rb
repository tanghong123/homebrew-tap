class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.197.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5b4a4645353cc11abbef762053853cc2e28a09b7aa580a0f3035265256b801a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f1b92a82e55bd27cdad9210c6751de62cac410719409b9e775d7f627719d1d45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e41e6c1afc9eb499d4e2c223f5d20e3673b2864f4037e53fcf1ff3f44adae985"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85ae8b4ddb8ab0c524462b8981cf81e148aed78b47b4a588321a4c6ad85fa93c"
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

class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.205.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "aa6aa76abb44b432c53b8495abd3ff0b34b79a3bcc184b5d27a24a9fc636dbd6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "dda5a69149229917236f55035b16c0b51133901bb6d3d64cbc00f0c485136a94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ac65b5b7f6c380c5fd0be21a524ced2f74f00f1fbb656658c347887b6f4bc8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9f01e2e898b16214233a2b9c63e1f65f4abb80851c121e649e493eb013b59d6"
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

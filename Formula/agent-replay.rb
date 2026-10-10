class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.369.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9f48602ce5733acd54b83bace6b49e47ae7af7204df85c81b68a917fa48d4ea0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5f4a5f66e70c617abdf0714c0cc1378ed5943662fc9cbe9d31faee5ff2693e46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06ece118a1f9d0f7798ffcab5ad5aa479013a934bea9fa92d99a6a81f7520011"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6257519572a71c6cf0899df077a0d3b82de231db1e55195e4e43e04035358d7"
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

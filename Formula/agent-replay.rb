class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6fc5fc53a932bd101eb34a4cfb7c553dbb75ec39ac8c71c581958b0cd0f9bdbc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b0bd562128a2609f9e7408bb4d6a71cd1aee727af8e3a24a87e0cf9c4fcadac2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e782b584bd7b55c4dc5ce986969e300482ef1b6692acf5e7ebbaa22dfa53fd30"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "949f59c162a057d75b889c135fb3a020ddb6707782630043b46a55b24ae5711d"
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

class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.200.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6d51abc11c82910b2ddd5c24cec1832790198b006a3c3c934ea9982974dff2e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4e035bc6a2f775e17072e5a0776b451d1fc6f43f95f66a138568bd39b8b31a66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b87c3edd7d4fe23ba7d6bc7dad279563ac992b2b2fd634db2ba027b791639afa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f82c2251b818219167266ba6d96d02d0d7db09ea97fe053a321fe9f7ba2ad47"
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

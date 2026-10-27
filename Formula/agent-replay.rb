class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.432.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a293f0644fcaa58ba3b631d3e0a333dba6180ef41e6c1269b1f5b1f4ffb5100c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7466243570bdb4788677755ab10458dd6b45ccda1e13472900533da32e8ebb3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fd947138a6cae56584e93c4a638a7b0d2b589930a198f9b38ecabda07d5e4a9a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35cae19834fe4be1890bb305b7c825a03ef50d331d8b651e203d2bcdfd04c4a1"
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

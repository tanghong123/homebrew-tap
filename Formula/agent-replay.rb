class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.132.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9252b6a82fdc4d65ec89b9abbaca2f8d6f655c58e0648bec5d6bfa5b25ffeadd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c2dd5e4052197367f9fbd7e4403761915aa034da69ea17ae29e61f7922801783"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "406ee9a5a0cffeb9d3c98db6231268558e4e5468a25b78eb6b94807c735f5220"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb109caf432ba6df8892e73207a1166416b9026a2c642988e5344d54a9ef1dd7"
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

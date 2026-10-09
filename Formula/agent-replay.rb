class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.367.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "64ba3b2c51cf1e556596c986b443acdfd0799d21c5043801937495ac7eaddfd7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "38a45eba557a33f82786041bce449a968c9834abec4771ab35434e0d51830a50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "881a46e6bf86d05ca27566f0b4b0e7e9c6a040fccf1c1418b83ee7be6a17ae4a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f2545be6c7bbb3c31c8cbcc3c1a0b71f9ac82be7b4a47ebd3b62c3a8a0ff492"
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

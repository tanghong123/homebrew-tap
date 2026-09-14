class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.271.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2fb3906b2925f25723e20dbfcc9590a296366461651793c6ac06b476f20133be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "955e118c45994571a6845a032608a1fee9450416396199aa397c6707af53343a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92807900c756f25e962e9176fbf145c3c11187f29a6f4eb51dd8738783da7f95"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d35c7132827c0be6e524937046a8c5a2f9833b26ae4bce17128eb334eef1febe"
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

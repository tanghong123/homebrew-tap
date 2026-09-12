class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.261.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3988c176e49f7a3ce9b4f5135105e1d6c55dbcde2a91d721f0e412dad69132f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "36ac454e8f6ee259182c6c2ce0efa67803437b769cd0b4e7480c83ce42349cd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd2f21e3eee57f59209ba81a345064f314c9d17a14e6225d71df99ccba363290"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01eff0d615d1c4f63f48a7b8234da9e672bd91c67a6adfd426e82bcebeae99dd"
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

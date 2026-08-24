class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c0a610badcb7daedb343b0ca187e65fc5b67d9c61e69535c9a1c8c757e3a52b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8f30a9d8b97c8bcfded1d7bd067b1bdd6d27e0b106bcc22e8f6e6fdb28013cbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "069b23236cf65613ae5ebb8ee22a3de6c6c150a60cef1fabe9270b8163be7e50"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f24dbb39bfb8c7c5e6260d29d9908f393a325218f6d5ce02a6983da8d9da8889"
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

class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.466.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "59d0c51fc1d62f5447b73d9148fc2c8ab77b7b727fa31aa62eb922499751a1de"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fbf7a828acfa1c74f7e59fe5faac11417543f6d87e6e350433a8220717fd0b03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03e268e8ca1ae5c710d11d42500dcb2d3c9cc7a746a2741dfcf9b86f1a6c71d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "727c04afb64e8cc5207e5f88e6d5ef64855a5778362606914fc14ebfc2e4a1e1"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

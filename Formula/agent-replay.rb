class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.186.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4fe87f33f682347c8c967adea40afa07a8f18260a8433a1e987c080d5fea0b2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e998143ab528bbfcfadedfa4eed96e53e82e6b8a5b8e2ae587fde727fc35b135"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e797ce6cdc76676b3ab246249843909b18055a3b7b228191456b20abd1e66e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9366dac789261bbcd434e53eed2e4eb4d360ad4c39c9af8a545a320f3bedac0a"
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

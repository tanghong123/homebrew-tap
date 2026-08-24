class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f3289fba5f25647348eb61d1ab6a462a2073c8d41729b127691df462da5197a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "67e97ff9b3ece3797284de3bd3662350858dbf5ce3c6ed229091a8d1ab5a0201"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "078c4be17e08b64a7041e8db32fe61cc7742986375082db60b1935ba1742c042"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "148837fc4b5d75e840c676373df7f03a6e55d858aa0485c641b6c8f10a4f5391"
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

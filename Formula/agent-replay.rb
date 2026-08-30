class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.116.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "067b32cb03caed7db6686d7b00a4d381f861f27db85ab87075f3c72d3e58718f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "eb7d6d669faacfa6c55a4a36520f0381b8bd938de010df4144fa6a9265dc9703"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5922c45056a4ba5567f005cbac0a7d25c86cd57efc443466190e6bc63136c8d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f3b1b9ece7e9252f52cfb0595863ae1c73a2fc0e6adf1bdea5f261d0ae362c9"
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

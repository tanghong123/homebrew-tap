class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.448.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "411ee847d854180baf8a948eb9f2cb70fbbe01d6ff398990aa8a57d89099a13d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "008e450b586076932926cbb54d7b82a56ee9633d26faa9cf5b34a0d7f65e97c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad9600bff87ea524e844a1fa5942f55ad87ecde499c432dd863b1a9e1c7c4483"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ceeb309c6cf896c0b8b94c07dfc1139ef2972a316ef16d5a4dacc758159052b"
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

class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.275.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0fda0dd389ed4f46f3f35d0877f3f00167f23a23ad2146aa42b3b632d724c65e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c16516ed6e1ba583b1afbf65df6d383da550a2cc942d7874fc4d725df51b04e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "45afd43d9e808903ebd764c4f9b55e93308a415db131036a0b0a5661ba9e67c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f8093dc11f77a8b4a6a3d84a1140b92ef5823aa0b82581013f88e01dedb2a65"
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

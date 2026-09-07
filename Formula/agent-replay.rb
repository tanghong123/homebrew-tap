class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.226.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2cd2d22af8373215549dceed6c4caf81cb4fa626c49797483260c11db090c9b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b6e45ff349d8a358fd20ff4fc0e392b0e10118577de1b3f561929dcd1d3bb766"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94b2c9a54c593dda6199321c1410d04613e4fcd711536c4a0dd7a445266e7b91"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cce51b2d3edcf5efa3f6cdcac5767ea4e9f4afcc98223c67e7970fe11a3c6b97"
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

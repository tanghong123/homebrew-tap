class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.277.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "977e68686dae5b01974cf8e30dd29650eeb96a6d350a20ba473f6282994eb104"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e17cc85591d8210d460e27958a848283da50072dbdee3aac743ca04b73db2a27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bb4d0d2d5024f31fcff2f23e04da1fa0c31dd6ebf5b275c5379eaa06a1871d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "159d30f174373fbf311feaef67df815aad56ce60ecaf825d8825d9b4e8359499"
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

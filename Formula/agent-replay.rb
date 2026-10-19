class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.393.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b25a6f43e2829cf5a8d87b85fafc5abf47857095abad472388e8a502e5a48eb6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "81d4cec5a68c2f071126ba4091059ce80e418d964819d34bcba6583f1fe1ff77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2677089d264e6308091e516d6672ed85343d80d25d6dcc2562961920f9791641"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "556903f05a2307a185d25d686fd0f09e35f735451133d1b024e4354c8013d572"
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

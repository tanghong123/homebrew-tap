class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.177.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "75edcb0cfb0cde5eb2e22e218b91a41984424f8a46b88318e3be21723ac99fb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9b394b85ced5fa4473d9b518e9aab1cfc2b1f0a1bd22879857b8a6d318e72b31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00d43ca2a9fe25ba1337ae2ec274b147337f976d811800255fc185aa565cdb75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fdc2e8b73932af256fcdf47075092a1ecfa7dba30f30742535a00a2f0af1486f"
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

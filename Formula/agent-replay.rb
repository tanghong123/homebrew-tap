class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.334.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "690c10251bd1385ed1f01d051209b0131b6ad946b9066b904c2d34be6dca0786"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6c2fd20310b16ffaf7b7c92a8f98b5cd0963233814cc3b9d754edba1affdaac2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e183f72c10332f5e68db32d755cd53a7c69b32de6867303f90b7cade172d2a9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe8b1404269f916cf16c122f66c791e58d1b5324371a17df4d6ab4d129f9ca8b"
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

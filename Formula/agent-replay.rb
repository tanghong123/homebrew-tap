class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.155.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ef8f8f937f178cf1409cd4c4469088fb798049369992f8806ef23c2021f06143"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c6b982516f0be99841e489378ab6b4addb65fde0b1df339c06a7dd923c4efdf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1fe4e594033f70610839c50f518fecb37a9f271f4fee31bbc851a9509ff4eb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7dddbed52728eb5d2f00769f6ef22f97f837f7a43c615c1b01c07ce790b0e9b"
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

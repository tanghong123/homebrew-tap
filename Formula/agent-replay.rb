class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.507.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cef4d5b76887550bf8831c7718fd937c3826a88f3168d07bf0c11d83dae94376"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "63d9df52227f1922006fc7f2dc5b5d7132652def1026298d0a99309e8604b9fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6b29b7d0d2a5ea572138622f832250a67ee296b0f551f3837fde54d408adc38d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3807c25d286a10aeb5a4dced207a5973ee6a77663546d6d6bce6712112efe4df"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

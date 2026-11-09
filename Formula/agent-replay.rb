class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.497.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c08ced79ea51ee772c867d717eb76fcf1c7f5e57c176ecb68c01b04c7b719a41"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d3466e4b949059c97d037d6426c47ffe583bc091db4d65be3f95db534362a876"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03c40a1c176e1573974962bc287bee5505da3bcc2dd82cfa5e0827f21147ff20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7140a8f0cbe48fa36cc2f50efff1e98f591dc5ff3862c96823d1b1ae17398037"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

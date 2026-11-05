class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.473.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "15348d0db7bdafe0ec7a3ba9467b96d93d7cb984ec0f19f6da49c632f8e26607"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "dc61aecab8b6193836346b58a25a6e5a5541697508cb2a3115daff6ffbaeca1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "729632a9ecfbbd2a7ff76df6f36ccef06c1f0345d4b7e66138dcd0c5953cf5c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "626fa50afcc74408e7fa0b848769f35f595704c0c7b673486b9dfa7b36a757ca"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

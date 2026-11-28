class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.577.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "66d2b818bbe0dbd02e39452bab9a14a8b2324b8fbbe0c42a853509f84dfa81c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4ee78622f6706d66a81ea6ae029730b1eead049e761493bb200a001b7cc3ed02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b397fb3d1fe8ab8593f23eb53a928e0f372c47d0c0ca32b150f7960fed6d3219"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38dfdf60a43ce11c4c44a3055c883c564419a7aed2f6450ec6b25e037b96bdad"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

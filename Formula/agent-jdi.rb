class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.569.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1228c5551232c71fd5a67c79fe3c2681713985751b138e161ca5656c3adb7a77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "39b5c2d84ca65327cc58f8416c0ef0b33ebc45f3ff7b5358705bad00c62ade92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0d50a63b346680d506cfb6924374b8c3ebb58a12fea2094553d553244937c41"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a72bf430c6f23141bbb0fc1d95b43ee346b4a20885485f964d6bfc884ea227ee"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

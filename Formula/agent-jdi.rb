class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.17.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.17.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2ffa96fe966c422e58c961d840148cb09b38f7713466a874ec0640066511dfd5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.17.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "343c68ff49d8f8d151f87855afa42ca076dbc576caf41cfc7d001b833bd9ceab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.17.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b52a17b1a1eb6d336615d92183b6e38e4f419d680c7d16eb7948cfd4f21c54d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.17.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31b80d0b8c88a1a128aded516946d974898a07e935daddfa9be0b6b1eb78f515"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

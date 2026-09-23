class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.294.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "488ccebb1661da182594317e916957c84165454fd063bf0dc8a32866ababf333"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f139cefffbdae5839a20dfa20c4bb62b95b7b1c9e453d93c0cbade860becd448"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5921ce0ef3d1aa80e88f9b711eb47b8aa6f9e02c8476c73a5b29ef8701c4cfb5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8323a4d4448a875a0f99915439773a7c06c6b3df9879cef72e122d0e3605d59"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

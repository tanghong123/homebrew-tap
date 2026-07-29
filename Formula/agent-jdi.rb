class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.0.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9802fffeffb019b3821a54c473b1f5f703b4fe38729719116a229c6a46ee0b42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4b31acd570b72e2ba29cb286c0de238407891e189d8e0203efbe9a175815002b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1016f93badf0f4175bb47c7ecc3095e5be1959e937ca93f48bfc729885d4f6bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e3d904fabd5304c249f52d51223537902cee247226bc48a601c308a7bd0e6d1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

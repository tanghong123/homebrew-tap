class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.536.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4f027a30c864b3050e96dcc46a952868bf7d4aa15d1be46b901fcc02696c97ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d598b47e785a25b6173e309c64304a7db17de4cb4b9b97580d05c4d365b74484"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "efd3fddca5158196ef25415cbc38dbec9b6465acd14a2aaa21152d13cf89532a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "300bd9eb845372d847af0179d69758a2d46e72f343334b046d836b3353ab8985"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

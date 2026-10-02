class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.343.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "81b0d64e665cac9d60305d0a364716552689ddde15b68a2a3e86ae1514f495ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "01dcc2623dd4b79802a2792fa2f3336682364ecad56c10826286cd81de116179"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e61d25bdeb748a0e62b60c5475421110bb5c4ec4d6c6816a0e7cc60f0fefd6c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "325633ee6fe9db19b1ac7b5085fec29724404b5e67a8a543f8a5d2a2b04a0ee7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

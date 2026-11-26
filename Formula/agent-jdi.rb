class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.572.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "88a8e9ee2609c65a3b9446e96163ee555f2a0f63ece4cdc76eae8ef1aab06e0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0e4dc08292c6482bf63e1a22cad8e2e515ed733351db16023637e905d1d4378e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2cfb6539bcbe3bd10f900d1d25eec10d05b7aff1421d0e90b6c34700c5ea22a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36665cca8ee3b855d41cd86e667aa0f8f9660c69c91a40a6903168e7ac89e404"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

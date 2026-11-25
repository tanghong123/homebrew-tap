class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.568.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0cb0381b5de577b7634e137320c2b5e5bdbee7733af2bd979af253d282f2746e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d5c513e73127b1298f77f0e46df0cc203d932c0dfa57c34cdec2a38376ed98e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d164abf8bac8f97158c9c0a54e1da1217cdb7ab8021ce68468a2f05c554f006e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ac2d8501ad8662262d7f15d1a7c7bd45f96d94e1d70133192829424ab78f032"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

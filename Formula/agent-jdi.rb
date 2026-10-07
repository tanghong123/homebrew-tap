class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.358.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5a3cf3fdeaae29a9486cf2d4afc85cdab274b408e96e60dc68423a6657626763"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "abd85cb9a5401ad76a966b2ab2278aaee9fc94a043cbb9d7d6c247e63020bbfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee8d5f562de3c4e101202af6fd8870eda265a078761312815e1e2395eaf510f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9fd25f892713ada21f644a883ae09551d4b515e9ae62d153a6338779ca481e51"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

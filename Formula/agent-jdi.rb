class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.23.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bf93424dd69c73ab6d5fe68c50fa4e1c69e6467890122f63cadffefc480c5f7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f88c9fbf42a9c611a3801b47c6a25790bed0674d97853d32f2ad9cfdd0388e70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "286fb8993355e6a746e2e761deb270dde2dfec6d77befa825d9fc99a27cf6f3d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7389d2118a1069c4885491ef3080db80749cbae8954fec10a1c569b4a25ddda4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

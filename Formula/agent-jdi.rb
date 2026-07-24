class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.23.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "380456c6bf4b3609becc1cdc904d47118b43ffdfc5ccc951fa05535ff62d83ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9bc64fc61cc89d1a6df08ffb5d16058bc8c4d63eb96510a95151b25ec37933dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "507de87c5afebd8b50bdfc9aa64dcd586418bd81b5a8322a96a7eb2907772566"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "327723eb6c9e0ebde01de8d2f3f3efde1fed0463a742b941fe0b3fa8499cb5b7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

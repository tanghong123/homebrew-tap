class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.47.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.47.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "008ae96bebfe0aa27b4f73e74461b1835197763edbe8f8eb16031f802fa21945"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.47.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5cc93380dd8cbaf3dacd98376dfc0c087ca0b539e9808491b14e3eca63b87ba8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.47.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "298b42df8fe18ba52fd8d4884260bdaf75deeea0310f66e21a060fe90736d2ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.47.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "764e482e8c53971f7542b03a6e0d8946f232d7e3f632aefda711fd9827fa85d7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

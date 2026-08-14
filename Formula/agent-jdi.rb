class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.75.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3569a9d5d65e40a5fd07a20533526d38ccb012b5676f77d70d2c448fe46b1d0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "12abf613a8489ccf5c710555d55578099915c30b19c6bee5d173dcac794eba31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "612b9c5e903cc37b913f7a529f17d9c01d929d8348a50bf84f64007724c30b21"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dfa9dbc036237bfd4b346a1d569f2f7659936c978ee7296750dba4c247d6851"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.545.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "05c966b2e87c218d23a6d7f39950342551b47b0f4358b892e83a33e8d433027a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4b09b6c158dd14becde8286f6ed3e1e6be00c8a0b19181b2796e975c77d77336"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf836394fad7a2c43cc90739228493bff0c78b50dc3f772d2295a22c322069fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74ddf46f1397352b1738100c0ce4db030641d6b71bbfc29407f7b655c68a444f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.267.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5e26f4bd3e740f4c6c1f59f1a576cc3e10db370611563798b822e62db514855d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "30242f5eb4bf18be4a0b8ea4abafaea423dfe888c9690d66aa976e38411bd86d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9026d8d30497232b879964e1a626de425de0f902745974505ad80e269c0cde0f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10f569fd657e4a810055cf769fd09bfbf4857efc4c1983f47061f89e3e37e14e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

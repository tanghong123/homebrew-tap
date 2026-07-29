class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.2.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a139095dff8d0c1dd468d70d214c3e56f6e1c534229e852a619c38b5674b0786"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4e5ac0996d9f09bda77d2be725d777ff3395998f3aa56e2b471ac1ea3e1f22ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8fecd72d45f068ab725b8131048d4de55c93afef5afe76d0f73d4e8af7212d73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e6be619c72a052e8c06822c320a18c0320a7e22e3189d3f5991d14400baff42"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

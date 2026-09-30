class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.334.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0f6dc2f3a68e34b16cb8648f378d5d0795f7fee62a8fac1baa3e750998b68a44"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a6d15ebd9050f25420c5a712b550c83e0a5126759619a4cc35ed478ccac74f14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "000756114217a1cb70041f8c72913779d503ff06eb7ea09108b4540e20ff82dd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "461284c3e2b49b3f7660566178a2e0971792411d81f15fc5d8dde53bb9b847da"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

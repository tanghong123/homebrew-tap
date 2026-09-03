class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.130.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bd28f8bbae0c695605263bc817c764da8875dff8915f85f90f1398c3c75cb4f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "59c6ce58ef8c2fdc9cb61d072b36927aed1bb1ff9cc9755b7c42d8e26112f3c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "155277febe840468bc9385c8914d880a20b6c6970c778e29e5f5d4a69d492a14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3524f73c24031fb196ad0ec3ccae7b2c35e5dbf12afac6057dfaf580bba90d1e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

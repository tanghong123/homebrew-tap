class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.185.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "45ce9d9920337e9f30ee66b2e10d4ff83ce903f625033831a036b2ea46b44447"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "60da70eab08b8fe17f805dce9f2f999874355ccc2b553418ac095d76ede37d08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "896ce700fe8488cddf1b7fca1c06ae110858136e8d04c05e2a956a0d3229e502"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "362e364be7d39f4c6009de71774ea0e21db2f03e64670c8e5051482bd444a87f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

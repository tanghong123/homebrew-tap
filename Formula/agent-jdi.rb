class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d516b69e51ca8a4632b6ef524a96a7d99859bba6420ef293b4eadd8aa7298b1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "86b6a5e18308a0df232703082b23ac4ea8616806ce8f3ad01ea6a36f93101148"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8aebf5ce7940110e2d2db1c648032aba3d2e52b03f661da5ee0439d17b21f114"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30258974656bdb13738271d95df52afcc61061de363580256922c6a451832e85"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

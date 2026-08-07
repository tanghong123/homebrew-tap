class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ffd5d7ba2226da469b4d73b29ef7423d6fa8961452574d9480970f7fbc6aff9a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6c279dfa693ea8d865b74fed0cddd99af243a4d28fb4439537ea6618cf694836"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fbad0d3121e7816e83f389dbe05416a0e23e4e91f3020e623f70ddaa59ad6087"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e138838bcef85a56b518bbde2284ad687ec26e7db0f69b5d30dc8384b7e8391b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

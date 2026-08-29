class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.113.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d3ac17e83d40d94bec5e7e69a3b980e00e0c4c8764aa827d178cb79f6d0f8ea5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "29072a340cca71fd7eba10fc535d301818bfe41c4691f37bb751f8ea022b2953"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e4393f4f173c49439ee23974cbfa707d766708d3763b746f5b21102855f7e1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1c021da10c53c5751190862cfafccbd02250d4373fb2facfe10942efbfe83a4e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

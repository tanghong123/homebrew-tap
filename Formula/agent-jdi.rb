class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.481.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "13cf46a00376ad4a82a6fb2b61dbaa810621c0b4f948263666547a092869a820"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8fa53140ae463d27bee6c5ad969709fbce16611dc4735a0e877c2fee4403df34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90ea8a649819fb09a9b158eec7f2efba37ae94674638eca1741712dfcab1519b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc679e0921d21fee4abe0cdcb375e2388b1923b6bea54be61dadd6ba54337215"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

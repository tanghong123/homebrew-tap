class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.142.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "618e01c3f43f31502d74eeb313be0f3c6bbefd8179c7739522ef6bd043f50d9a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f38795b0800aa8d8e1189f9f937af4364d8478925b1dd931fbe7d27f7b9d18fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82f30c37035b668b318230e0b527059bd3607a65a2344be4d671a3c4c4761b4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "921e75b18ff852764298be713125c9f8b3c190b131e2b76468dc6e0335388d61"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

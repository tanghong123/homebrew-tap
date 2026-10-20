class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.396.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0bb72031b67b3df2cd0fd46d6e240b298f63e5f499760ad404c22d5ceb9c504d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "041c1a2065f318bf3e140b17d2f93669e57879672c559550b801c5f819399319"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "174f6a8f02a7586f29d00035fb29527fe8129370596e612ea4775350f4490a77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8028da65689fc6f7fed08be57f3122c9a8689d4b1259173d8c19f86fbf929ae"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

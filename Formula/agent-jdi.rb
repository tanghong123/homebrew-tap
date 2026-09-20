class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.290.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c2c6fe325ab443e58e32c1a5dca6be677b09309a73e08aa62ab9b84bf8205afc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "629dfc76c7f803052aebcea0e15b39693cfa683654f76c23c926491386400f5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de7a39b8dc3df908e02d38874e70391527a3d5d7fc3ecf112dfe1e4e8b2674e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d14700e6a8ac5e72d9f536a553348422dbdc7a7fb4a00039e33dc01b40934dcd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

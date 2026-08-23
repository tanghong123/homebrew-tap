class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e18484d23d229e76c34d446937ed4e36b385580c4f67493494f51a6bce491ddb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0be5aa902f2bc9793a9df008931a2a3440cd3ca89192c29011f7701511cbd716"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6326e34167348d37cee9d41bb2a1076e6be71b645784c67ce1630fd4b8b1002"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "827f2f61a1616f53bd57c979ee8efb9dfdfcd718e8c1a993b0a313f5ad8ecb29"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

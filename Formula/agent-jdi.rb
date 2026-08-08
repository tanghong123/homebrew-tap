class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a44abfa2da3a6c754777e6c70eef65bf2abdaa949f2f3c9ca73d7a62cdd6bbd3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1aeb23785dc001d6479075159468444de8916f7b8acc00ebbb8551e9621e8761"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a52f97fd2ed22790d2a94a1f03bbc3982b0a6939d1bddff2f85a7fe88dea899"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6bb1189f603dfd14adf9b2e8581ae8a485fff4426239a66aacd8cf5145b175a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

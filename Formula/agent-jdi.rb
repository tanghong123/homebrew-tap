class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.139.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c456bd0703994bbc087a78bc6ba49246cfffd603661a55767a4a3b5f69c16a24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7b400ef30091fe67fdefe8909a4f426b4b94ef4fedc161eaddeda574f207eead"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "180bd88c0c839663f7e016855d6b61a06c7cd6a5b2d220a506915ef07509d70b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ddd455f9af1d2c94b42fc4a649f71d9056662bedd7eb8fd83923a708c950f421"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.496.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "58a409e25ec5b99b46b5952cf0487904f8ed30cfffa0a9fc0299827cf86d86f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a64ee6bb258b765e120fa41ec54a0165950dca229f90a269465c61fa20832ab4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cbb82bd97f7278e07a7ce31534b28972067947957286e4fc93d5fc14bf38f6f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca457e1013208343bc18a96e24d1a94e1bd35b3e16c0c818f121e39b37e69b17"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

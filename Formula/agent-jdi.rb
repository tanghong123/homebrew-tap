class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.453.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2826b467a2a24b979da4079b43c0cfa992d6658c3e23ec14d03d8d20bf8260e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "211cf217609261db76573e51283103f015d4242a8d9ea6e5fb63695802918bb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a5cf824c16f0aa77a14dffdb10b244a818ddc59b04b6520fa5e7d7a64e69943"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "891c979d0f4f1e438a9bf12cb7c7aafcedd1c90dd6caab845775ce90c7cb1db7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

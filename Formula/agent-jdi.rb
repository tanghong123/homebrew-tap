class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.1.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "152003ae1c396440d927a88df09193cf77d3e8a3339204704c6da46037f1361e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "11f393aa8b64b51f79f1308f46f652d699dd90f65071a383b4a4fa20904eef08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "894571ff899e12527f6b0df37ce0343ea36252f5195d1b47f12d15d94044f9e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcda1b231509a179e102f95c5c507706501c222d2e0dd4170062962cf0b40109"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

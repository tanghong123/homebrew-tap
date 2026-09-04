class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.156.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f4cff9c6d45ed2c4d2e731ab6b96af6474b4d658594295d0078d2415537609d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1111f58b4005c56ec76ac99e467032fa11f0e1185bdf28149a3affeb19bc9032"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cfea159781c6b0595e298a848c1036ba4128cbe1a2adeac89241cb9dcad79619"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe1dca166b003c38c18b30ce4e61e42804ccbacfdea4796aaec3ae29408ac7d6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

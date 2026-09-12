class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.262.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ef28f737952024a6315a24e601ccbf89ab4aebd35eabda460438da7e4e3d3aac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a7cf6f9c14e4b46874f2bc3da312b7fdf28820ece80caf773018b2e853338725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ad228b07b39a1b8a3a9119591973c2e893f1e3f1550af27253e17b44cf104d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b92f8bfd70d1709227589a92fd1a7759f8826b4f509d8472f425f5c1f6b3950"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

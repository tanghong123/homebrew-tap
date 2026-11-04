class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.465.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "316f3a07d10b141a67c368cb72cb03ac05a7bdd0756f655ae912aecc86a13f68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7fdc405a0e2d5b04cd3335f9bcf30ffd61d30bfb8e46b2d1f0fd635d754114fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4218eee4d94da044f6742b9b96695bd714e8f7f133546849d586196af99c77d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68e78a26f4c9b1e3b164f29678368c721b6630292ff9657b8e562124b33bbb75"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

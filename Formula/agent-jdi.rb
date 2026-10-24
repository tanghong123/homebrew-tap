class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.416.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8138249472ec3bf594f4ccfd0be10f0e1de5f58b348555c64ac7bf5d9076a89e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c12798a257af372bbb3c23ad89ac2e4da52b603be45ce23af033e2d367b5a5a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b47deec6ba1455d210699d311a1f014e525190e3950d3786ca2641631354a65e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "484170ce8b02bff4307078e6449e7b2a5fd92f45eb160355a3bc4bf3186cc09a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

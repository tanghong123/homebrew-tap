class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.10.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.10.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5f4696aa6ef4b3ce28dd728429f76f172fdbd030a7e9b574196acac2c2d658e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.10.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6c6d30636259bb8b9fd51145e6e3e39af00284de7cb5ff3fc81b6369cf4742c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.10.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72ac60f7a78c521dcba307de396caa55b84a844df2312c08c11f22c15603e045"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.10.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed58797d1301da7f1cda52334e77d7bd2edfa98ed982e995bc4c84708da88de6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

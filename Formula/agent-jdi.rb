class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.236.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "44120add4a02944fbab7b9ecdfa9fc06713b6e2e12a7c9d8fce2d1f14fbf4ae7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3833bbf1c82354b0be2d7ce1cdab7e442ecd746ec7123e61df5c9de57ed82fc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b76aec6f83f7c32218aaa186984ee662cc3dee8ae26f19e3fde6832fa660ff1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "542b13b87a16b1c80951a12349caf2ea721a2f8e60f3a497220d793f83062218"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

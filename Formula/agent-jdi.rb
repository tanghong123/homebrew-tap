class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.14.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.14.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9f1a4d174b0e4da856d6353512ac30cdfe8493df65c4bf95006cdf1a813b8561"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.14.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "73b3042a5676e8a49ca29ff239a7d3d632c964297f41808a233db86747d5939c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.14.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "760ee674a13f18129ef0982becf5818a6164458b6f5fbe8066b7bb0df8836781"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.14.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8aac5a299d757a642c52f618e44d283dbfd2d6068175cccf29aa016db0a7e1c2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.46.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d7dd4ec34a4f4b45674f75ded1c72d5b77cc6facb17879f92b5d27a25e0e1b3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3678f487383c06b1c1082e3c88db45a081d393796437daa8a69d4e2ac1ee48bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29a1ced30cdf36317677a0dbdfdbfe40586a3c198f817f1bb4ef01c62bbf19ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "111de58dc482175d9badd8c1f71871425f071e074559f06a18fbd39a79956e44"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

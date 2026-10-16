class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.381.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6fb12f4a333a4ec80738b3dee8eb3964b98c95142b150a5da5b3e5a8cd1772d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b283c157d5153a276d47390716091d6e6f877919dec583725556d16a8692964a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22dd58dcfd19bd4a5970479adebc2b71eff8f1bb409233a2e74a9858628b7bb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a3b5c354f57047e1491e8702559af6564a576a1cb6b49a0dd9d26fbfadf8d76"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.89.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9f5621500e565286ac75aa2c090d038b6012af0a16b89e59412cba641e882ad1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d529f90582e4c281fab8d9aeb897a8fbedf53a23c1f23983963c79b769d8fccc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b714f600cdce397945b3b40f872d112fbfdc05a82c05928c617a3bcb7f89fa9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "197d771aeedb475661f0e7cc93d4f7fe6bc054127e008745a8edd9f16df9f3b1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.40.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.40.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c5e6f5693b13ea0dac08f8636e61212e67a73184660d5ac4fae809085b2b577a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.40.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f6e316aafd70bff30e5ec55f44070a8340a5c7a9286e2fc55dcbf69fc8235a81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.40.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a203f18d0213891ab39bdc852a392065845ba15025c0332f53fac8a40c30953"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.40.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "459318bfe8bbebe2c2501698355661eb2307cb484cb53e9364a9a1341edce041"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

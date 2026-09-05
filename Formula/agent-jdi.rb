class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.199.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b6cbeec71602932e27ea3fac4968863503f646e0c13f549439e29debaadf129c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "abde14d63676567fdd338b3a2c0d26b16afda5a056b223e41384d979c6de57c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "960cb7e2721377a33f7b4d21dd2ace763b5e77fa19047e735c984c9440bf65a1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ebc4d1b9114da8b2ed18bab42b26425169083563fcd4c1cdea94803ae080bcd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

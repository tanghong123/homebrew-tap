class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.168.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5af31c269afd438a745d59d91300fa2feca613b99e7b0ba81b1a8511cd0445c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ed44e1436adcf59e6f4fc46627d302301c9d89c431d8992b2bad7f60d83561a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ddba4c64da896073edaccfbcae7caf4e557e708c5d31524fe1eff882b221b4c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f474da292f0f031abc3a6880b46630c969c3e7e74f0651d203c4279d3f71b8f3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.513.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "317496ca53230b7d2a544e2943d4f58bcc746d3db55d24773a11db80f85e5218"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b2b7c7ec80e5a0fa320704e5a19df00409a97454f4fa48b763c71e667c205a4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "061416a2cf731e17718cdb76a193736d6aad6595008b86e1fec9e9511acfa6b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "abbc02883a8776a517396287dc7b561c5b8436f932ded6cbcbcf2821f064c91b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

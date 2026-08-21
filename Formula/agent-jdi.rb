class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.99.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8e4fbc3b556e82ec963488f30b58f9d2f2dbefb9a4248001acba39f45463e2bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e8043a680ad5e4f74164811a894f577b9d19bf64962c4721e9a19ace0507f1dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "034c8faef259a804dbe81f9993cade64675e2295ef9946495d14d0ed2515f99f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c038929e5df98baa5bfba0a602dd123fc7910d7803641b9d43b2704aa58b142c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

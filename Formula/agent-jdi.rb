class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "82cbfe582aedba5de4bd0a237d9e93321e75d6fd54956602156bcb6eb884add2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b20aa8ff5ff8fce10e23da7be9dcd19cab82fd782561b0995cb786c9201bd62b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e27182fb6b668598f8ba3344104f9103b72ee322e711732f6734fc6a995261b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd25705666321c21b2faaac7d9a37bf3b909c84e36ddc62d44c5a73c0976bc65"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

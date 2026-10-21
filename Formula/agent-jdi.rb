class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.401.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3c294527a941aee97228e3fb22156117915ba0a8dfa51d5233afba51e107a56a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "25c23eed58acaef29156d0c0b633e53b78f504fbf78c8d55fb118f60ce036760"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "150744b37766743f4da990613457dc28381eaae6e4306e71997772948834653b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3548b560360f1a5dab912313d1735d4a0a6dbb5153b12dd428e5abb966baf402"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

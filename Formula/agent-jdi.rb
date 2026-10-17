class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.383.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6a2ef00b61422505bfa9446cbd9f445cd6fb97fd081c456dad1f884aaecc0561"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3afa9b3e3f255f5b545fe0de412fb252e92e6ad1541b70002a4f2347d511590b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4381f0838a12c806c391d35a443e0b296d41d43ed49a0cf395a2116ab7bea6c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af9b65512d6e1f48c713d32a9f8693ab3cf1995935c340d7994f41ef31e9b8d4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

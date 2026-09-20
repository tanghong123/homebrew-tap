class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.286.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d027d643ab556bdf28cabb270b6dfa412385e81ee1990ee4888a88aa5f20fea7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c1a26cfd403743f2833be0ac2501f4475bba90af567030c665b1b4b9182bd954"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06b319136b7531906975d89bd762d4d6c40562584bdb20910f0a7b00a6827f97"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "229c0e6b4a76f669ef149a0aaefbb6ff6f29fe1e57713049cb7f51e23ad14d17"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.30.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "dcaed25fe8a4e682f7ea6bda3bf75e6c161167a15fc493a848abd2f91d615fde"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ad23b3352bfa200921491693428e324d9b9494ea9b7bce44ffc1a576a5742a59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a73240ce893dac6b0e0786b74df38c5a0c3abf53b5dbf48c2f4a450d4b938f95"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28e2ddffd243c601fe03941d35b18307375b29f07789f8c546c3fbff35b477eb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

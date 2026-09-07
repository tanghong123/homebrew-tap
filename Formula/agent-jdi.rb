class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.226.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4efaceb1bf6ec2fbb0f689661b0ada9dc818ffc2c9d11c6ebb6e2a59b464d0a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a05e7967408d9bcd3371b052b5a4872b7576b804d1831beb3f4f61f0de460078"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f644c20b721d4629521f8c1465aeeee39461dd1bcec238a8b32b4c058e97a7f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10011ba2baa1356f8a6ab7b126988797f362054dea8a007919f5037bca60ec1f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

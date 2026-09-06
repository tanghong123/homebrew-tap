class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.218.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a87074b534c2f5c670e96173aad3fa1d9ae560bbfa9f90020927573f721ff05c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8ab78d5fe9dcfe6eb7aee7f59c0d7de41af43148042f549b1f5d229fdf89d9d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc08ac49bef3c05b0aa9c6641b7266f129123660992be3aa1a7d2ef0e1d0c002"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1ec8c889c82db9122423105926c673e2b386d6e01e8bff498bb0b56fbbb1367"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

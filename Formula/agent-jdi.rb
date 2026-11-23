class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.555.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "19cbe356f869bc5cc0c851fe48a466eca080da13aaa292919aecc000e7617f9b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "95f635b2fbc9405ccd7c130fd1ce80a0a88d7531733373f65dee30163dada0c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c202eb42c6eac8e386820aff8a9536e89b25208d8b81d58533f462c86afdcbb2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d12a173b8b8a4cd47d0a4ebae96cbbf97feb6f317b9a6ec07ecb23e0332d754"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

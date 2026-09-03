class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.129.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "98baf991c8b990b6b0eb9cd99e4329aa2857aacd8c0decf2cbaa8a0207695daa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "54219e8c6f87e90a6b3a0fa31c731e7b87677d88d8f63e0e108306b306964d48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bbf66663903b5f8c0e1a17108bc0cc37366c13589162338954ba5ede1d6d663b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd89cc6002159c7ae585c149860fa4c43141885bbfa89071f7fd12f1ffa92f91"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.213.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ea33f6218e819f20261c2d9510366ec83b412efd8b3bc713974c2f42501c6f7d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3c1e14c91c99050e7bb5b61805cb8aa3628de3e00475cdf77658bb2b33b84548"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ffb811c03aebcc28e395df96d1450620ce8030ccfa56d684e46cb541177e3cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3fbd670b494114af0f0b4cd93c5cbc91067bf74a40c332c9f27505e71d92e45b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "54253036f78107f4fe58e0f88d0bd20accfeb4ab809007bfddd455cbd312dd6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "34a8fee7cfb1d9d0f504a647d61ecf9a58b07bf3a3d9c4a6122703cfb67ea604"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c769990191b50a130fa89c20aa90af09230cef357668395064cb7939aeec753d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "276e1041fa2cde7b89f50edf281c7f61d0e24a11c8f90cb4d043fd759bd681c2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.119.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a02b7187895a9373ce00ac74a5b9f2f91c3bbb5bb46dfd5f809a1de82ce32b0e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4c9489f5a153cafc70611576ae0bd85e9b4d7c0af0f86089cf99093ff9c91508"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4f8a8343eac585383d488aed00c0bd4898e9776989b4444c7de2118ca1019a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f211fa0036b0f0ad106bed073a1b09bbc930c4ab867f52c787590a067b87a32c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

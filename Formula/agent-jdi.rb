class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1fe790732e69caeed505c44981c7b262a3e2b19654cecf784483c456ebddf64f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8978d09987cfd33c682a627acf4b2ce005946e8a40d551261ec9dcc9640ea9ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d3b00403ded5f946fddc4767ae7148e46bb02a03595447633950d45d3d1b031"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8d98414911645710475fbc8f9434a6adaf7087d0e6b89b64308d25d36ff64c4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.455.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e2c1c00c37377ad247df1f0d1d763e22a69472470938ce7bbdacaa729c59c4e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0011c9b48aa69edf8f0fb7cd8a42860300ef03cc384775390a3a06b3bb886ba6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1117b41f9654b0a2cd8094929ef18f3f5f4b002caaedcfa853ae5e755936119f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8bf1c146707e54e035b6bf129d5dd27be7bf1ecb199f286c4ddeb2f98fb8c16"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

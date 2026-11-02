class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.461.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5f19a17b27fbbcb8bfc44578af2d6e5101c02e795f6f885f45ddd898b14ecd10"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a8cd3e2a14c72e2021040a48baedbe3fadb7f1e943f920cd07ac91a466521c55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57c0f956d28347729092c56802bace38c444214b2f716c610e66fa0796ba5f08"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e03eccd6cc390a66523e203217b0e5f9eb984ee23702c65e415e5496f651d5ed"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

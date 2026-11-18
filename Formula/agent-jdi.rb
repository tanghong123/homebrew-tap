class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.534.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4b06b3c672aa724bdd54fb1aa30029938a77658d35b0dd8c955624be229be6fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cac29302c876582b0aad80cffcc5b3c1bfe86a37e4b91d08df7987c9e70887b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "44a3104ef2924c7782c9e59ee25594e94ef6d741fe1f4829c4007965abdf96af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91dfd9a323fbad1daf3a59b0923135cce0d61d93a0959bd47e526e88325c66bc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

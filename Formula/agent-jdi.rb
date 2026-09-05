class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.191.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "221a8a05975acf2c854f2e7719ec03a72e92e72cd51bd5165c0280cc42d9d124"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a60dcc34627526c26d684828555f7a51bb7e8eda7858228c01c41522197e613f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db57c7f3ab301b3eccb3f7feaf113f4fddad67e6e30149c1790241675bb5c711"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5506a4d6e26526ea80e443e2e5afe51637f832f472336825365717df5cc5363a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

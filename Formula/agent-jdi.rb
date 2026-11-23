class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.556.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b2e9a4617a3979ff7e493780832c4d43cf6a8d3b36cb0dd08be3c01320410454"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c5794b5416fdd86134a9dc77318efae27017b7f4fc73e73a8b24198ed6804b23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a3fcb472139e27b1e18058997e3647e022fbf75da2fde55a0a8541d83dcbbf16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61f942879242d6479943928a6f01535c867b18fc8072968ddf86972a47864c6c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

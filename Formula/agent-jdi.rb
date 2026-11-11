class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.508.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "04db87a5f8d9cf893cdf47e8deebacfb0925d7395b9abb73b276f6c12db36e97"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "929a406e25e03646635ab9476b406cb03c3ddfcb9b0ceb654193464a7fef229d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5bc9be01ddf986bc9fcfe71a63304bc376ff97d47c9f4199618f1006ebeca3fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "72728cb64e59957c97aa672da721be43bb1b6e0d47a05c912a9c269b8510e116"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

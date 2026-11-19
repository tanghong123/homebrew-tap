class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.540.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "87571e9ca5b01c781b6ecc88de6dadee37fc874975279fff0e395afa37b1c285"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a1416dfd548eea50531f08d960cce42edae57af96cfd531078f28cf0aff80ac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dfa6d2f3c3fcbecd1bd8e90af200c228f7639313eecfd6f73305eacdf42b077"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da546995a0f7bcfdae9e91e07544f9ed62cc2eb472678086031ab7b66a096c2d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

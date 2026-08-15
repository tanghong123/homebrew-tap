class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.78.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d3864c6fab3e23427a8fa58d7dfd4fc0cd865455e8258ffdcf30b7d34c4e2ea6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d52184a2cce3343d7c2997cfb370438739c4a80d234794c57bf6a2d3154900b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "62d07ed7818c4493e759f6a67235dc63afe7a7dbdd0624624eea12ad7e3fc703"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a6cb0c7c6a7464570d54c4fb35a9a13a06ed0c2723bdffc014e16e6e2402d7f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

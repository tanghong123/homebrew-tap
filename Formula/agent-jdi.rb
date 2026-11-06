class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.476.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6014c6bfb6c907b690b3194b77ed7ee2c5aaf183d65eeabe219eb706b8452808"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "66d3e2f5d6975be4f238e9c8ba9658f69397376b5306e13f7ad7ee6253d0d3a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e635019d759c54921c474bb753bba14171bd2811e8c48cb25b7f1909d406784e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2984b3bf76f6e37e4e44da40a1be390efcac37ae830bc0ebbf69d4596eb4450"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

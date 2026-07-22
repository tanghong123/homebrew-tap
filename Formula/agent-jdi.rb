class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.12.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "efb1603ea156f98cf5c99b107174e2169de7d1881bf8b55f40b9fedec516909c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1ff6bc2357ebf1fde1e4eb4ef183fb47493ecf5aeb805e1b1ea105b1585ec52f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6332b64544cb26734702f2e319343f28503a338a6a5e7025a33c524f4d9781a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6846fb25f7d9831929db0b33f6b4f3c70f0eca30fa804db112a582a0a826584f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

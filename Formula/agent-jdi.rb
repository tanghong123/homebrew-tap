class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.8.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.8.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "830d3bf079863ea4ffe0510d75e9cba7df174e5c650f393cb7f20ef372665659"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.8.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0ee60cf83e1c262fe01fc9de5f9bf2087f33badc5ac9408d78e638b02e1cd281"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.8.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "606da7ab5cb4082ea2730128754980e8a368cb893dfba53f248b295bd4f8de6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.8.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5bee1fa2a960cc92356f439674d678abe6f6b0f8b23c80eadfec4d9d030c0bf3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

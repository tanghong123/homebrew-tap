class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.255.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4d9b53ccde7eb060e52823b202999bc8ec485d928a582d3b421c179fc2244a93"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "62061b3f9e3c7819b3c2a6fb87b1cbad6e5b81c68ea1b214d3d4047f700d1a5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "caf7f66084ad92b0d96ea27aece8fe3596801c5e72a3ba03b19b3f17b303443a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ae7348461585f5743ae1f927a933eb32bf58aa7ad9ec79dde317e31627a5a77"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

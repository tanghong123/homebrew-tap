class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.528.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d9ceb8b878331cfac2083906b0be48cfe55461329b5a596fe8acec06af375be4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "55b8d9aec5f1ea858797a15851e46b9d55fc0fd020d041766fe9745d57cc725d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "243a369bc34e09f403e5863cabcea500b84617b412fb910eef219cb95a0134f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.528.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2898218670972446ed723624d78a5f544c8eab6804a0cd3c35aa78488ce96838"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

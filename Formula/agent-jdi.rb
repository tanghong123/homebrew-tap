class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.32.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.32.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "376b4504b50ae7907ca8c6892fc113ff88953378388ed46ecab1f2e7ff5e29e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.32.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "af03de2f0dd553588608c0f55385242e3fadb12c7000db47cbc8f9956e673d80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.32.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a92d16041af0b5f123f93de475e8b50d7ec48d26f751121ef5ae6ce9271711b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.32.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7300630623fed2b60e3121b70329b25c4e37fa96657ea77aaeb883fa78b251a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

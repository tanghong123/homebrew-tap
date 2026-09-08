class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.240.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2a12d48f81263bd4959d101efb2ffc6f7a891456f171d236739800ce800a1c0e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1ab94b75c6e356cfa4c66b8b4d2992bbe94fbd567124460dc131922e2a7940f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6addafe9fe7a2d00aa63382edb47ca409de070c9c364087d7b799144bd8a295e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d50309e809578e5cc76994137a2674ba5fca898679b316984a7238ffce2e567"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

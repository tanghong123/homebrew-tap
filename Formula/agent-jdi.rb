class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.24.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.24.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d93f788f7d5ff8eedb25bf60ee939f65b23338a1797916d13d8bc05583bd10be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.24.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2e795941856e4ad171aa3f9e532ce6202a18f6a5b45a4d2fa89728615df39921"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.24.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e884316848b5840004946125c12e40be0987103d59597b1a1549bc27a6872f2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.24.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d685ac95ec3c1e318d676523fb324895fa65730643a9591d9c412ed09e5980d9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.285.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4f1a29d1b9286c9a6a3c7c4ea4ba901069a6f2377d2e765c3dd67b1843136899"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0259237f32ed23790eaf0df06f63265cc6e1f2182cb41a0ad650210e8665baea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2dc5711add331d82cf5e0b8770419b1ac57a8b3dfdf4b57d9728d90e72eab6c6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35a8f6bc3ff58df70b8159db0aa0948b56471e9c7e49a3b30642d4c5e7fd35c6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

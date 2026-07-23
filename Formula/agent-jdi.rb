class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.18.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.18.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3ca52c1d75b365ef0093647c3cce7bd05284f78b6adead25acad2ba2fdb49fd6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.18.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "bc418d634bb6868181127645f44beb27f278184840d5f68db5079cecb0fd29d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.18.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "781b3d783dd5d4ca7a1d7dadcea5825f19792643027d3dc8e707b2a22f229b52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.18.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fe74d70932060f24a06ba4af8682f462e0ef4656ac4fa33c652396374f2aa37"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

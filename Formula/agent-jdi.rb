class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "87251e519cee81bf8e92d9aa4f9a7e53f3f8c9ea094c69731069f4336635a23f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "090343fcc6a28bf0690d7eb70d3d7336d4dcece646f8e55b1b737ca8073b0abd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b02e0c41a78829f33da00139dcc3479b482713b06c65762458a0fc67f7b4de05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e5184f54d1056a30af45e833ff3fb3ff205cfc52e59805191ffbbd39a441c64"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

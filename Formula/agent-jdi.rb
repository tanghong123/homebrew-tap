class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.479.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "64322d6223fa72fd29a0b7a85e5cc7300ad005680829a6f011289839ed9009c1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6d24a22923b7af5e0303c42462c4a33341b8f124fc7b1eee62f3bade5510583b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9f8ef340994d23d7b54f3735d73a781d1e4b64fbc7a8e34e2044d41ed58c62f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b241b32218a25b07af7aae21f6d6890ef17cb5f1c2aae27ea123749d3df3a865"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

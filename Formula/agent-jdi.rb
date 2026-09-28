class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.322.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3306d4442059999f19d9f3ae77ede0b8f1534f8b86fccadbec97c96683537629"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "df2a78b5ff0c0a6ac7b630506795f106e1f8c8f00c562fa5a759e240c0b6cb00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e433cc5718a3a648765a85a6b738e31b80b4c8cdd5ebd554023aaa578bafcf42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9db3d71d87f5ec53b43223d1b24404c93d15f18ee51ffacd4a1539dccb7cd46d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.131.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2661ee5e51142d514c13c9dd6b27f35e89c3e22d25ea8fa62dc83a92cd91223a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1f202e906bd6c16ab94cbac55071e83b599d8629bed376acab16dab4470bfd5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9ac33393c640b2683368a2eb13a3337a26e769fa6843c116c628bffbd1dcbf3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f89f8b9765b730b46808ea6c5b08244a9bf33aac91059de1e57f9a28db9c5da3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

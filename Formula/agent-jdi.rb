class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.494.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "34a20d90bfdd6498cb28146d30b10432847ad69a8afddda0b64180350e1aaf54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e890c8ba6347e18f4a6a00dfbf5c4542f16aaa9dd30d0971e4bff7e743df9c1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b78a5f75f835f2bace6786a02f07c61bfcbe876ef4597bbc37c4b4beb3a8e8c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66836aa99aa72be649bba6ae010933b8cfec08c5e4a5ccaecd7a3b6eb39d1533"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

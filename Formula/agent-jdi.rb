class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.15.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8c8f82218eb8a6e4178c1963d2e552c63d3050c3a6b8621a7780d6cc9aa7b92d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cc81a3bf44edb2fe2720f41a351f1b5bc05a2515b06c1b5570154e27df03060b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "73770bc0cbdc37c7d4cadde19fadfa73f9eda6596c29cc594162313ae6b0b3f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f78f0512720f44e13977f5324dc45aec53eb1c0cdc77ec9fa6dad0f5c046f04"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

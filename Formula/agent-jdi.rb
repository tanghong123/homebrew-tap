class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.311.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5f60f95f5717ba85333f0f32627059ba88432ebd6ba43a3948891c03427da6a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2e72045d2a9a0a7c8aee93fb932efc6bef9dc6ab0f467f51e4488aca9ddd5321"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "24d97acc1a6ce2961d03149753f8216b82dac3c0f52177d9dceb479232115496"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31d682d26024ca68243e35b3b30f66da9271622d82ffe73c09797b833c8a10b1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

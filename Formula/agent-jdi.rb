class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.215.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "33018796f568a1af38891adaabc38cc7f6546103675703d266492c605f6b3326"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "33a48df53023739d2a1db1ef8567e6e21080ce201a9d496598474107a47669d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e98b8949719cfea65c6ff1c3a4fc874af0ce58b1e260a29bdceccfb6b9a7d467"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af807c4d6db702f89ffbc9af0f3dbc313adfb6c945df2ea43a7b88be787ac8cd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

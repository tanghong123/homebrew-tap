class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.306.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "731f93664e600a9161cdbf320b343430bc6b56c4348da350d1a305ddf65827ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ae86b924c932e27046699de654dcc861c4dd9cf3a431737aa1105508569a6459"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f604aa1442ace1e35689979308007776dd822d02114ef6783d8be8030a0d6edd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b59a4df19d608eec7c89b196fc86efc8ca3563410b7e9f639dc1fdf70196098"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.282.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6138244dcb2a0a5288acf9e9027593a4c3dbbcafccb15f3df6274f6f3d9153f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "37be346ca3a546d5ab94cb0b193ed65e94f51f26a8932157c8153901cb3c16c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "432e52fe9906d535b282389b7f20a6d26a2e58321b524d676488725ecbe8c255"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc3ca62c59b9b03c3aaffd8a4212a969aa1be11325003cff157fdd55884d37ec"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

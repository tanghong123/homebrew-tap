class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.23.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "588b464e97b0dae0df4ee86aa50ad40c57630bac75d565e41f5022a5637dad16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "159dbddc4c6ace7e6cbbcc9932b25ba1ac7d0800546b33d52514dffe289c7975"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54b8e3e0f7875f88a45517ad7ff601f7db8fa7282c178787c73a1893c0dbe919"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f444f8de64193e584da3a0ef38f408d9ffa8a754ccfb6ec7462fc633d2a19f79"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

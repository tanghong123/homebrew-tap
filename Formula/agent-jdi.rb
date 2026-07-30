class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.19.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "69ff13b4e9181433072696b78801f238a8cfb5980e4c67713625de978ffefa39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f76253bef9d0e96f8bd3af4e2562e1da775ee8c82030c3329e1f0ff9bdfe4bcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4301d47a8366e1e3e1a5e73bb0733f36a9ef48f7923910ceca2d336d749c5f62"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cee16056b833cedb7643414bfc4d8e262edf4f29a352e375f58f811fe702b483"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

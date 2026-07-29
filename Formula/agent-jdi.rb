class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.11.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.11.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a5f5f4165e7905897217929b641c9c4b26072d2c0d73908aec76b864eba05ced"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.11.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7c1e627f0015dc980b5f96cb575f004e5a2803840047ffb1e2f7876888d11edd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.11.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d9d736bcf57c76240368e67865498c56c4af42e9cc493f78de7bdd3a95a9bdb4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.11.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d57cf4f4120a122220adfaeef9b97c216598ceebb3892d1d7564d77035e63e5d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

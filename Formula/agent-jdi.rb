class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.578.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d210ae7067fbf90ca1ff2a6e211f660fce0b0680ad3021c8293d5d1f4c542d6b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "bf055f040a0b760a6867848e8b5c2aa7afa256a931560b4a6be7f8be9739f4bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95d11fb9fd7c74f84037c31cd893200288f12c6e202efbbd4cd94956df62f21a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cf572455059e6188a9d5c7d2e2a7b7cc52ca477d121903763635b107c07a161"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

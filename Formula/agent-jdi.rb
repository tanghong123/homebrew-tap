class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.15.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "23b5309e58eb109d63a234382ba357be007cc50f5bb74bf39e02805fb6ee7f3e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1163397977eecad62b90c8d20d7a4e50632a9d0d790a38338585c554bc9928ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0fe0ad153b1b24dad5bb20a5bcbe46370f3ea5876579dca18dc718e1686f34b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8dd53661fe3d8b17c7a9b845efa41425bb612314ee5a0fa119ca5e3bd2ec92a6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

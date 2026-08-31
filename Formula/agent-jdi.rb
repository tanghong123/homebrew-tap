class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.118.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "07e4474719ac864a1018cce12cd545c634091fc12fa0af7655238d88d8f1a69d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "96de10ad8d32b170642d70960ffdf949e7c5c12d85af3a2fec73ad16f2586b15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b43def9741e548f09b90dc350faae3d90e0804dc76d630dc99969263c42568e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.118.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d390ad63c60f6700222c33ccc9452d0cc16be76bc16c2c6b42bdb63513934626"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

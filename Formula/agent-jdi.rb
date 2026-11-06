class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.480.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "36acbb69479ffb86a43f6d0d0a4ebced97babfcffc4e04e8031e92be0ce674eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "62836fb305c7ff6b6c2c3271ee4b7dfaf1679ae28b3e74d4d0034d997e616451"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca29041e5024bcb5757bd8d9f8d2bd54b9f8e9ce2d674a2449146eecb0d92c18"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46e41b3755c8acae14bd0b3dd95ec890820a4a01d9405b8f54f4e8474a883a74"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

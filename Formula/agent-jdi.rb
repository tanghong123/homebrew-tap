class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.77.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8ce3a36db300676dd675e000ceadc8dd4a3784b07d968d8c166884bda2c88190"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e7e52f8153c8fa3c9ff876e624c5a1caa29ef4d530dcdd2a78e259a81ffa63f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6fbfa1ee82ac3c2bbc0e27c4d91808bb4cc8c9945ecc3fec62ed4d629f3cb213"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a2604be007ca7ed2385117e02bd8914138375d0663aa44090d079bea63255fea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

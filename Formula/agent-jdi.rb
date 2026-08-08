class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.53.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5f101ad2edcf9accc2d8e889b76ae5b29347201f2302f96bfc1f2f1483c265f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4abf294c0dd692d0c2136afd4500b6cb2cb63c8b6c1e7c2aba7ec0518803a054"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91f89d6f6f557b1a9900cc9c79c0515a75149a54fdfb2294358b3e23caa19244"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f8043f4cb7854e530a8d4b18523f38ee0f596ded1ac3e175df7154dd2e8f73a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

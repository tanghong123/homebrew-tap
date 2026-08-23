class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e86d22b01537e4d68b75f76ff4fb8a1ab8eab8b3612e93a6cda61ed74b7f63fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "151ad452b17464bc3bad82a968266d01ab61189c57137a9304667255cffb8947"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41239e6436036724b4df265ca8bce2a2e1c6c4ff2d6c602fbb50193da6402445"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41818cd4eec3e859b5af645506509edd801ea8dacadfcfb29dd09903d5008ff9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

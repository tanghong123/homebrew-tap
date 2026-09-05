class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.189.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "473ac973cba9132e48cdf588a78bd075052493f34380bdfcbee9945919a3061d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3733b08e080e03a2eaec87cff8538ed7fa3711de359023da1f13f48450588e9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "128621d148ea49c6036c76ede24fc035e9a2a5286ea289d5b21554b9356b7c9b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c479fc9aea7561f021e5d2744aeb64f9f0df7060ea9e2aa780b97ee18cdb7a2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

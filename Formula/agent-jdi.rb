class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.564.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6f4b90c51f709c48d26e4bed960b77758cd8ff72a1d588b142c80d0c1c1c8706"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b2a986ee96179b4d2229b2adc9aea7f5732e57bc350569f2a0169b50e444b148"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a934aed310a94db00716f5896c6b52115cdd8f16679c4bd27b2a42b0e40ae5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15191bac4495532bf45c5c0423e90d04b55d8f7bf5391bedea9a1fe9594039c1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

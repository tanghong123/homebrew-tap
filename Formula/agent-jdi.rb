class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.298.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "50fbfcceedfb995584d9fdc8d91bb3eb3f7bb074b6ae7ff59a541a2124896076"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "27dc07165312726e66b92adc367349fb99dbd7c581e98438020002a45f7af68f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d8e09768b6fd480417facf60cf2962b90acc79ea8e942002f9f75e403b0ce8e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc21a4a1b2c97c490cce34e383a2a5bb206cf31be3181c1af2f66e2a633f03c2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

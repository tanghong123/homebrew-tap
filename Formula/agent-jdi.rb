class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.16"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "35225b8e38cf1180101a65566c9220b593d40e59e85846243c4e5c591585dc03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ea49d2ce746c6e65e6ec53730e998573943bd27139f7977937601a3120ac30b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3dab15e22d928adc3811dae7bc48b29557a70d302b6494fb55d30e7d5d8fc92"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "375ea1e9d4a85c52e729328fc65e40b3840fd4b9678340d4b1cabbfbbb64de2c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

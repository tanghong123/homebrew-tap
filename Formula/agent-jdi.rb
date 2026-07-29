class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c47ba184b9b738cf58595d58c091a7a7b7dfbb0635de161a6cfe8b0da879ff2e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "effee8a26ddbb2b37dcd570451c8606ebd7167db4e863d0ab791997a4b1a4f06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "804750e8d582819d38b1f67c6f63b821894c13121ab2b82e7e3307adc3bac534"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d71267802dbf7f9463fb1cf37967ef572b94a3d6dc8d75f3b5b600659e04636"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

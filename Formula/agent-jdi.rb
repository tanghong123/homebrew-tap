class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.547.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e627384d1b5a3b79192a03eac76eedfa051ed96cb3ef35718f108f40feb66658"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0d2c30f206286066b5af9b7877a9bcd52c6270f7270fd9eaff23bf733d50ad2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5410145c4a5385d428ecd7bd17c5d5409914caba9c21d1a684222793dfb8488"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18774be4c8f11f7940d469881bfd43b75ce32143414f59b82ba13c15fb197a13"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

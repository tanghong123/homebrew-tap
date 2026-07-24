class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.19.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.19.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9847bc3d992dd317059951ea3293cfbd91839d46d66297e96d35b634ecf0b8e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.19.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2857b7f76f8c5485feecf4b102b28c4c5d1b2803d8d902e9c8c373a4a952de22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.19.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ac216cf572223a06adb77a780ae400711d5d481639d21fd40d04fc0d240af84"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.19.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6292596a0bda1273cd909ce21dc0615844a21a4eb7e5881eb835c4f431c7698b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

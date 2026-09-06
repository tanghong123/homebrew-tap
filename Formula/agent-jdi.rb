class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.216.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "74068e006866818c12e6040baecd452a189691122935c32779daad8e3739d3d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "59a131593d2c6c9b6d00e06c5034e02e283a2ebff33bd627468264f51ed550e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d11a7e775c5940c86d5e5acd307bf9f87ab91bede67239ee3447dff6c155f03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8975a893ed4cd333ca8200247d9e0fd3d380c6d4a1729475fd0dd928da3e8108"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

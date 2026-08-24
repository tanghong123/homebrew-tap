class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3ea689ffb20a8e5354c2853ceb6d4c0855d327be70b0c75a0046aea436c63d12"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "551aaff5a11283f556a53431230875d39e62fa654dbf0c18f53c380332b74c8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b70d164889cbbfabe1c984914b72be8a6fcd05e049f0e86db4cb453b5ccb05bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e10a9942ba10ee9ea781214426bdb2dc058f220aab695fc9544196e237ed3819"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

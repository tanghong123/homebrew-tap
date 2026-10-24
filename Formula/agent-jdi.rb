class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.413.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7cca81bc30f647c5872ef5460223d367a71410b2f808fbb87a22ed3b58a7bf50"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5e714cf9348a71e86f5e5c1ee9089da0f0aace33b8546222f8cbfe4c383b94be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc8e84a888348d6b5e7a561e8628be84c8b9146b1aea46ce3547bbe7c3f9c231"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74bba92e0fb89f9cfc08ae4468c7723bf32204f9c886d43dde42fc0281d01f92"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.12.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c02d0622a04291d42f28d23e88828d2fe3ee955f172ef404189097001bc2b474"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d16c9fec6e0f7ab046fa220b63fb1b09bd8aad2e6397ca7bdd1351e8fcb1c7e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4444493d93d5456c13fde28641decb2b45480f1b8257cbd0a122f4c3a4893bf0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "507d201cbfca2a4fba7dd83c975a45eeb9d411d13396eb7ac2a8663485167557"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

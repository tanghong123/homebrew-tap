class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.495.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d037426014a9e60c183ee844c43538ffd144838ddaf9d377cb64e9b3f5fdae64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6cee38b5a921da9c20af062b339e2282707295d9e3894ec15a1d76b70d2e0299"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7a79b4ba70e4f6582f0132cbbd2ecaea5da2563b261e4a749731c5dc6b3754f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d6282145e7a7d76e5178e7b1756e50a7e980fccf9f5a7b02534a37de64faba8e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "25b0d154871c5a67585dcd74312f7fd9ba54647c127c416cc02a96ed28652476"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "df2e63cc7479f754018e13743b57a5e6f9461060689334b9cb4d4dfacfac9191"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b168dbe55635d67501091743ccf7ea91321070224985bccdd0a9e8e4b6ae517"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88bbfedf70fc4a39ae4b968f6708f107566a9c501f77cea0b9260de974d9804e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

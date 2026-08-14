class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.72.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ede5d054f6c9f98a4047bf587b8368f95b4e761deddcbcab1191a050e224ebaa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4f50ea433bed7b62d34d973ceaf6fafcd4ec5438fdf8b24f3ad63da56b776dca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "300e832720031db8a045a216bc1e10997e2cfa759cbb743352b210c88dbdbcf6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "669993825c87d73f61d2a3a704f77dc5a25251c6aff196ac857acfcc0fd201a3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

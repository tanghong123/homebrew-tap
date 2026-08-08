class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3c18f2f9e08dbd2810a832befc0399072d7df6a71560238b0cba64cb977b7a6b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "68b2cf0c386eef33a68eb78f455fac9c9f041a56bfb2e3416986ac489986cba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91264405a826860241c4e88a21e080496f740e561b82dc87870eb8827b734e1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2439e213aa3e1bb749ead455065f9f34f0cff3532adb1d2e6fa1792091cb12ce"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

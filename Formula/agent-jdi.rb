class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.514.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2dfac392893136f7ec6bba618d51759d704db90d4e4380cd2996d3f7efce3175"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a13fb5ef0299d45280754e3e2950ce34823f86499453e862798a19c49e60a0ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6bcee37be4d653dc82495f97f07b049d7a851b964ffba4ede8de76edbd743dcd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "014bfc7b1177b3642a3eea3fedf8db961a037bd9be3f6efe38d9538787fb31df"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.58.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5024bf9b54b81b58b92d4f7ee719f6d20891b113c8efbf7c5f67fc9a142a8a83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "69f1d3d656348c91fc3b5d16560df2585d6eaf109acb154dc004cada5496bc6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92599c958638e33eb73746bfb44cbc8a3c3eac70fc748c6b3af1a79c0d6dd021"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8644897874c3cd7e0edfa382fa2b617aa3b4b51321eb40403d2ab99762c9ac68"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.11.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3f11cebf5f680082cc2accf168ed742297788cbd5b99414ceb3eef4b8d85549f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "82d591ebf6e5ebedf87c12c49b0fff80b317b29f4e4e2256a0e4956e3e120a3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9eb44ce106bd2a9d76d682c61db0d37b16445d9db6c038bed9b86bf64fc48eee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9f5b77dd08751e25c9fc321f68acb0ec9dd1b8e85f763bb5d5a151cde8dc227"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

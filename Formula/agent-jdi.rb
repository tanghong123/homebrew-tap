class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.6/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "915c688d10f73ea1e428e99e02028a77fdf0394ed51d24643de2baab1a364ef5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.6/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "298dfa3b5c86204947d7c4c02656c68ee8e898920c0a169a59298116f8e921ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.6/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ceee4ec2552494ea35960149561bc8738c8cabee0758cd79ef33f981775d3fe4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.6/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27ff3fa4405b28053347f60718afd4c26483b5cca70c321e163dc06a44a602ee"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

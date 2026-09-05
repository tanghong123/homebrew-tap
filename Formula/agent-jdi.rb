class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.184.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3a219dd22753099f130016f89104b81b92542bffdae3763bd4c4703beec47528"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8caae05e5563fafc0fe7eee89564ab9fd47ace559dc811f246ef93cb24059d12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b557002357ab47ff245370c69fae41146727ff3c169a54026a8501bc93731709"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c01ea9e7380763a7aa1f037008dc3c626e9159f77bb1b102151bedd4cf2472bc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

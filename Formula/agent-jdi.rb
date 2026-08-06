class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.42.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8cac5997d85b886fd7dc62174d85c07ccfb0978c037f934c103dd7646b08704c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b880ac6d69d267f5afbb9778a5a51bb47041bad5e3a9e31f570e3e9fecef4077"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b1857c8d6d6706061e65cdc8cb4f731cb1bf6651c47a1bd6833b67a95965fb49"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3811a08198d73046b82ef3a5732f3c174ddb8b4536401251557c1932915cef35"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

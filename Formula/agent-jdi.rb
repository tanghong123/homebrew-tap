class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.560.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "02924330cf1424f3bd106655017b533eddf6d9a534e5fe1dd674dbadb214fa9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ba19a2e45ef27a79189f7d896fdbe7436505dfaecbc176b468ccce28ee68dce0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85ac39bddd31907b18edec736d973bdf813662d969d072ab0014e7435df117ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9381cca279b38cdb645d705680a2b1788f5bd6acd787556ef26cfea0c96137ce"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

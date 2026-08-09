class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "883ceca846ce027bf7c6ef5c9af0be3e789b33b951f69debd415a858553a0c2b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1c51c2c545eb16ab0405d7e28d56a0c084a584fb592429df8da8ad8b28c9c281"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "83800afe2a9bdc964f7823fd6bbf6406cc983c45d2cc0f651c15ce742f2040d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95ee05847dd24988c6996ab6216205740b02bb7658ab8658b1b1517cc1b12ce9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.39.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "da59ec09895f05f7d85f0b8756b2a3b857943d1421e49db3a4843980d31fcac2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "47d2115d27a8df998f9d8dc34c003b6b37f9f6005a93c574e7e1bfdb3f8d0668"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fd60facd289c9880ed3ba8d49cc1179b4c6bca3af9619e3f8fca13c78de25a72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f6fbcb47aba1315440e303230ae2999d603fae99309d356752204ffd7de98b8c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

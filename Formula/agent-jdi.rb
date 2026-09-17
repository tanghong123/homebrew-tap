class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.274.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6a510ae8de08ccfa5e3b21c4a26988c7447b80f261f4bb36a563bc04474f0f85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c07b0b8d16d685e8e5ea58ab70ed7de4f323183814e76e87b89a1f636d165f45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2126fbb6e0f500b36def3129d69f534fbdbbf463143721ef9ef7ba878d8e2369"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "801822eb3f78e9d3ddc9a58632c840f045a0b37aa214a1839b5e98a00193d3aa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

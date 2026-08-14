class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.72.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "13d718e0a2d6fcaf7ab60e6d68d473537677cfd65ef5d1f974e9640bf44ab0a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a1feb59771fd4f190f7c37e606b7c1670d95ffeac8f4b5ee762d6937a64a6715"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05809420661920573b5b28f7fdc8bad8e536f186df2c747477f40851c813c8ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d7fad504478b3b3f692c7323284c9924c6e41d048a815c7e4d2ed417aaa4d0c3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

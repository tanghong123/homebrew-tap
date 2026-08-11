class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.63.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "46724e03cde706dfeba9e991d1bc8342525693084f8e5059b11fe15561e3713e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3ed7dc1a51d09a1af97245524d9c72d3f542a47b41222207ba39202e41feac0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e17fa5950406a3797ddcd605d24402be6883de800cbfeaceb7ab1724805b0b0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5483fdebcdf348afa5d279e1410355a9dcb217ce2829487c723c5844e9e5a4d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.4.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.4.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "86f351bfbafd53408bdc6fbc62ae9ed41aeb2752df6e738dec267a8233e99d7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.4.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c513092a3b404484efe2b0afddd4953508f4f6f0698aff2bcddffc8e36e6fbe2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.4.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "81752747d19d121696f2346c0d2669dc0f06af7f58f10b27814b5484ef192dda"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.4.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d74c027b2f3aa75355b89c57726cf707c7868149a5fd419ab53eb8f93be49aa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

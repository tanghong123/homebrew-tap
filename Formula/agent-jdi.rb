class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.34.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.34.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "49a64de57670072628772d4eb3703fbc04fdac4bdfcafb14ab78ddd84e5725ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.34.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cef60cf9a380e08cd21d71bbe60d9e5f81123da7ac8c23247e102bbcdd4c81d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.34.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2a95f60075946451768910c9c40eaeee176fe7a2c6ad9c32d0d7ab630002bb1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.34.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86fce7f452717dcdbae94c69975a81f8d027078d0bc8df20954af590d221e460"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

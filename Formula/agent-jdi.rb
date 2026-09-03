class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.134.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b5d3e93179b2b4ccd8d9b61cdac62781215a425c3194732c5c2e0ba0775c0c73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8ac5ac07c2a85f9f8210702e4faffcf330ad78007e306c99924fb72459a1186b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75f443a79fdbcc67745d3dc195b1afe15fe1b7f318ec3e935451fa3d80e56294"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d1f02d5921e5bb933f500e8f8a75a60d26df2d607e4f7b29fb37aad87f2ec61"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

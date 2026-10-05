class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.348.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "92b02a3434ff01345aedccfe312e64e385b6dd972b239f712e9c5647a9703e6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "65eac5990c7a439b66502b02678eebf9a496b65f335ef22fcc71ebea34346a23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98e62e98f33fe1b5517d0d90ff06f3da6897aceccb72a7d4da98661dd9b68763"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5655f5b02a1774d09f25122f267837de0d74e922c770cb9ed8acbe8e0b13c9cd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

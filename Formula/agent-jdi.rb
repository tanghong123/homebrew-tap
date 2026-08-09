class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e0f3d89a39a15c939282055c42c486dc579053616375433ff56513c6d3d82d8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1155eb0f993b40c0d0e7c893124f2e3be5a806330c082a5d8e5f0288e7ed5943"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e331d7f12f99769ef986dc550bbd015fdd0f7c755100716fb5de1703f885533"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d1f712ebfaf356dd10140a79d8f2fd4d64a5edfff2908c08f5e91dfdec82977"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

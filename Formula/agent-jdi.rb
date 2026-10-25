class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.420.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "52256bcbcc47d5306c2801f97be3391f4eb802d53f9f821d0cea88012eefdae8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "aca08e33f6122cc27f67b0b2d206ecacad3cb9db5ed3599efbd674a73c7ce31e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ffe862e7ee38e701b068c471e06ec77c8f8e2372d9433f7bc6f8b4db05d94824"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2049d75280e89213ff8f3a2c6bb5f2f7a223ad3a33307897c2128f52a9c81311"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

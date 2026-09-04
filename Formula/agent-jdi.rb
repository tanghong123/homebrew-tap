class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.178.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5e9e27b44a1c330ca4ba8079a270d54453f9afc103d5d6c8529b1b1c8acc1089"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c54c027fb018523ff34575e19989871a5c1d6521c4157cb8f00c8b253b035de1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b4d0f22c9140771cc7c1deb855ca66fcb5104a1713c6963cc9da06b425bf853"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36a11594dfcf4ac30bae4b2fd6c11cc908bbb700fd5a9f6ac8452f53c1391919"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

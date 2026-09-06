class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.211.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b6fdadb29576232e24436b912993a74bc57f9fbb930192ecd24dbba568335134"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4bc23c858ba315fa6ded8bae5e1fbf2c80a9dee6d519846a13d24ab3f6c44b28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7eb5d1f3bb13d2e606ff40f6690bcd88d65f124c39ecd7476796342d159d7573"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7679deb3fa8956e26b6d84ef5733f07e1cc08e08ba3a296f4d9c4d288c6f27c9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

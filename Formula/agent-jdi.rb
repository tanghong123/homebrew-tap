class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.335.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2f9d70327ed5ec0e0468ee4dccd0552584113fc6a0abe8c3a9a0da89d0b3cf42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b8f0e57d24ec2ceb98a0755735121827b33ec3767779ea325cb84b3c45810879"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b7faa0b52001b44dab9c8d394474b0c76dcff54b11431dc37a0bb24696496d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30e424ed7884db878c215c36ab12399cb4d3546d8616f050c8c67f517c83b6d2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

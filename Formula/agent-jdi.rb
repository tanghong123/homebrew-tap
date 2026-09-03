class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.148.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4e2a3bffa87e73b9ad03db214d8ed3ede06c7d63db38bc4586d7a89ed627168d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a662bae6f6f5c756c2054bae9d30d0876c022f6716d72118d39ae57820f742e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f97e72e914616bb22bb7473003f71e0f9fb934259e997b6b506a6efde2a9a112"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2423f001364f60f6f3b82a9ec2847065c2d4298d35d1645c6fc4bcc42ab5d89d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

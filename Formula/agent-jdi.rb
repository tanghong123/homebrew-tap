class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.219.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2817c825da9c37bf5afb2db6279e09c47fee042c5c7fbbdae064816ceb858463"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5a4bb8f23d3544e3b72fd856d1bb4a3b6f92f0b8f4f89a25848b3b9f673ff2a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a844d713c52778adcb30c17ec41d47098c0186c931bca45796e3a32d7b8f90ce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c491d99494d061f9c75a60913a7c75d961726c2f67df240f6b07fae75d59be3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.196.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5c9fc6e5cc653bc660c0952e6b4d9641a80f658dee3e5e4e40b0ee1267631bfd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4d03f2f5a8e3ec8c9628fab3c77b008062b59d0c0530b9d44afd2dd4a29c1b70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a879b8d6b2f89e9f0b1bd5a7653d54d289ea66377f25284c8cb779e8ca199bcf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "535c6a96d1953f0ba3ff522bf470415e4fd68371e3698fe25ef3c57c41f4acab"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

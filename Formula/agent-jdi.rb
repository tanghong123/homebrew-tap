class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.466.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "52667275205cf92d0cb85f4c4b0fdb1fab93ceef4adf7507db8158ee7cf0ea88"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d6e35bf4a4ea4c52b43dd187158a3ae1ce15aedc5fa907735ebe40bb32f01d80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b198c9867891f37f9ad42d6e97b5cd4bc0059b7d1dd6df4c4be605718c7c0a14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5216cd60a3ca20457bfaa721bdca94dcbeb1c10f0b1a6b1606d4b5c8a789b1ea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

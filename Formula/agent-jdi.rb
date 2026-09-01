class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.128.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "39da175a352865d9f02190eb38fc10e134caa1d197acf6a32f3f7696d1f5f85a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4b0dd216ac36f52aacae2ac9a896d42b2ed6d7463e024c218dba1e5b06ce9ab3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdabcef036967c5c4a9994b5acebf19416bdbe192f0e64db7730e67c4a31e356"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02c6ce856ce85dd6976363aee47f532bd2c2924629c4d5899d4be02737445e54"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

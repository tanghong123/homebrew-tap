class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.505.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "678c920d64647178256faab4d1f7fbd121041d32652c2661c35a01f25434905e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d4e75ee5bf411fd5e0e6bc93674db1580b94b4c4fb4a2c86a615e904e26b9e92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad02e23e5f8139588ba739b370c1d26e2da85721d43ec2601578f87706a3e717"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8f46615a30784357bfe94efdab73ac39e2e27a8a8c490653f5990d81cd30f74"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

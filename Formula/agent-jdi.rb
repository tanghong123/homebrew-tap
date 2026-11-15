class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.523.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c7816dc6d20b7837d84c8ef1ae9762099b1bffd6c1acb73d21eaf0e80703962c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9ca3102615c984a7b47930f26a14866e37356c9ee5088ab2c90a86cab1596f9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9f9d04375374cce76539b9b37c7a2a067f51518f49885f510330075c1a78b05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c0b2f6f617fd33f8549e1c2cffd9eff956cae0528640f20fec9a8d36e6fc29c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

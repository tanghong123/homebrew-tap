class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.206.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d7726e386ea2d2802d3e4c0674f3630c7fe4a663facc79a6960114d583f4d030"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b3869699ac500adf104d9fc300c35426966c6d40c261ce35aa91d608a28effa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "befa6469b0db488c69ffc6c3cd1a2110245fa4a69632a666bfdd4107d3494871"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bcfbd82389fdb4ea72ed88a63c7e2016765904637bf7d0e0166e57412f4f2514"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

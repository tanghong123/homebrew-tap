class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.2.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "560c81928ef7e4eb7b98d079d78bb91ce4acfd30fb77f2c5388828de439430cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "df49097938470772437d6ee8307396fd358d2043d5ee753c91f53384670a587d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ec5208a47148dcaf9f7106c513b15774a670ae1ac19d5c057174a5aedc586f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c21faea32c3c0b74948fc4dfccca6f257b48a8982c1bf916fac15a0f067018cb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

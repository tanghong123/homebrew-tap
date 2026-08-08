class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d175422c5fc5f45c7a20405a50dcfa013989bcc625936de3b0a7b3ed8f66add1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b0b8aa1abf840b12477465aeffc5909eba09117bcd44b8dd94d4f5047e85f450"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68ac28e82e62540580c9802dc0cf2f78d9cd97b7b472063a6b34f923c475e579"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "630a30b5e957f4c00d26056380ebd3eed6c3172a1c0f0853013938c212d8fb6c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

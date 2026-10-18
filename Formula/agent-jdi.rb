class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.387.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bcdb6b4055e7b6f7f4aefed2aa709a343566254298654cbc098cbd4a15f6d1f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4bb0ed97fca97c230bf29f656b743b7ef466a1c240afb248ca860642c620d663"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1af9b3477effa4efab33e1953bb48fc83fd556901591510c0fd9d73650dcf081"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3529810a2b54681a83b6f4bb472c64ebc1c454e15f5ab0cc86f83a3f58c2766"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

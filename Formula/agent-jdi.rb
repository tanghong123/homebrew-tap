class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.376.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cdae7a996c9a56ccfdf466586a845b3f33ca37b413034e54c5abc2206a1277a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c113f7cc7f6251f32b56927accb970f2fc4e36c9cd662c0e152e36b59ffcdfd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59115d0210a619b9d2d89149c48dceb6fc9155f87dbd2f0f99e901334bfe2297"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14fb0214a1b6dbf3409325517ba7cf594335c949e259c2002045e711bac11648"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

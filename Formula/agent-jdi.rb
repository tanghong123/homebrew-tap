class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.8"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7f44a2b867888e329d26a8851ea64734b1d8a326c00c6f285a233278e30981c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "97dc062402b345c1d3f11e721fc1f732fd09b49d9e1df387c4f59946ee7bfd29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5694376ba0c6b28f6dd0c42a55aed7c19eeff1a6461e8d608d44254b359039b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c49634eca1d02780ed8b580e333d198aa724e0392930185671e8afbe0c64b9fe"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

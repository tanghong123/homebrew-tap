class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4291cc6a6982d3c7bcbc5926672b5c4f82cc116e7aa582520ad19217db967376"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "037ed272fa5612e88a263648cd4645750f9241ba5d199c8300fca7a388133a8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3026c56ac0fd80ccf190470385df4e9440432b7d154e0575a77bbf9fdc551c36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d77aa5a2597080fb1ca009efd40660af457d5ed931c219eaedaac7934d3897bb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

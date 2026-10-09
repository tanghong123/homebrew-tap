class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.367.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0ddbb4ebf1d93b0e35d3d99d227df9ec01f5c3bf0854c19039e398fba5415802"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "83e36ea457ed429bad9aff99f3d96f366e58a5c225749b7d23fa7ab19a577586"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c819b33b2bd9382c641f82ea1465ae5d77f18c297825eabde678d375f61ebaac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f2aea66476bcea09bb40541b00c9df464a8cd5eae3202934edf42c6765e1e13"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

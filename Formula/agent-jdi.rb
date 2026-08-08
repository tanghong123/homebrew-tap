class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4f2d0f2143c054ec5e55159addcdaef1be0c8ec88c0e55bdb108ddf41f9751de"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8ec54d8e2465ba74f86c1c28d4e0e28d26b4a071af4451ccbab2553e75b21a18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5382db175c06a797b87a760090907f5dab74b11587dbd9988c19794dbc71e296"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "872ecaf045c774fcefff6ea16c419b5d763301243105d3373487fda7b467ef52"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

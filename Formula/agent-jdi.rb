class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.456.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6573dd40cd57299577d4861642932a101f119e5199a3a1983d6153d864704b6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "42f6cc43ab3c8fdc0ce8f945e8366ae6819730e473617872873f10fae0bb425c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "681f88ab30ff3f89302cfdfc0161166f658c95eb367ace8e7a2ca712f6877e44"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b3534a6da032697938a508286b8565d909a6e764e08771b61c2d3ae47484884"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.515.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2629305615e04b60234ded37601bce21f1ebb107d20added1a5eb43650ed4cab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "de95816e4a8a1803b649ccb6b2d6b987d3fe57347fae60dc01e15c689d23a67a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0146d741f3538acadaadc41295dba7e04eb84ce46c319e34d592324ee4659287"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6826dcf8b5fee1aef6ac726e74125663a7bb29c4b211f7fa964ac4eae66520aa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

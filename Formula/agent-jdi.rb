class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.67.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d01f1f3d964f5599abb9b85be80b12fa5961cafc9f824388288875c27237b3de"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "077f3f7487f8e93dee93eda5c3ad8710ee08b8e674f72a826225bc69a216692a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8e73eb4a9cb22f70d54738f7d97be311b11a6806738625c6a57c3e76873c3ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35f4cf2f408899354dd163bf6e2a2b4f49740f86a6f6ad9b6e8e580f0d1958dd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

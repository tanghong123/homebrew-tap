class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.21.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.21.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fbf01e3eeb29bccee8dfb5d7948a2c9ea5dcefe16a145620137fc46faf769c54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.21.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6792c7573ae33695a0cb21932c1cadee01f6b25c51f806af50fbc820553762f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.21.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b7a6b2fb44563b14c3a219f05ebd2a84378ffdc93e0ea91c8f57f4d42b923cb9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.21.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36b35ae997acd06bfdc7ec62322b4ee6ecc42ec97354e0670a3163ae03fcbe94"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

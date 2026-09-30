class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.336.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2fda4e4c20bd026040f9f06d0a005b5a16202609525f974bc9cc0f610127f35e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4e14a5b5e67aa03355aff0dd85975084d9d8cbe3c8482706de4fc2116ca85ea9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c5751a16aabe35a14e5a718c476b1adb26b87ddb137970a116eefbecd7cbf9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be0c4661c4cc9dfc8046f410ad2d23bc6d504496c0e9c4770b7c941ab442af12"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

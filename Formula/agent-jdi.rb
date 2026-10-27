class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.431.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "47a212228ab9b220fb233245c9309a53ea18a6a61c1c4418c14906cd256d6fcb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2891728ac5cdf7372ef0d7b81d7cf063989ef3ae90bfd27413e9e3b8cbde251f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7c4468872dd3a5e0a415434b7e4358dec2d1eb265a17cb43e28d49a9b6fb3e9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4784343d23b3db777fc0f74595bc5fe0477bf091fde6cdb0a9b2a325ff2361d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

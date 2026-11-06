class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.478.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "79ae582e30b6af01a07cd4adcca69ddcecf48ecc89b6c959d319871e75d7eff2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "09974f004e749f392f11f7813821b5dba0c8eecf857c164792dfe84f0acd2bbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ab7f9dc013390cfa042b9c8e1a5db3d6fbea8c4bd0cfa478fc6e9a1e0057f23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d62d5b098a0448f37a243243e400f63fe4bb522ee4bb34cb0e96fbd643ec3bd6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

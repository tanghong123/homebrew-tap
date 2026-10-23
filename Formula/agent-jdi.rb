class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.406.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "040c2bfb8c740847a0906cc2f47c37e3f9cea64dcb739d2be5efcee2b37ec3c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "38e25de4d094798f725e4da77c5c103a139e8edf94abae9085122da46235b4ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "253b7dea9f977aea49ee14e5e662857299f2295632bfabe93aca766eebcf3c54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a268cee19af7bce40ca59e76b0a99fb58ecb50bbfd7cbafbcf27de36c3ae0021"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

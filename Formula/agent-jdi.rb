class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.405.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a5b2dfd5af56a25f1d4caec14f0ce80e1b0ce71b8e75da283a12a71c6678c51a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "10a41762246abd25d4a6ddeb2ad5636d8384a24f933b68cc455274fc8755055c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba9b50d8e381e4312330b35d4d06a12db44b4863f7b32e42378903311d1bf43d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03ea5b7a18f9b75752980beb03799ba38490d45f0e4c5d9c18e9c1018d4b87fa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

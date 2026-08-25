class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.107.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "97916a30f835713a8142b42e926000a2b99301648ad8dd6547aa859be8063bc7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c949f91b9b5f00b05232102c4eb51a0d730450562cb562167bb144ad8bc4ce73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c90e4ebea9d917187c0f025c2981e1c74962190639b3744685127ff40638a7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9578fdd49bfe9b81cae65faf9037e2669d2eb2d74c3a55041ebb418371dc410"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

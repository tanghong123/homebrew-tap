class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.472.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "10f49b104e8857dfba6d3b9b8acf6e0c9596484e51dfbfaaa09404d535244e9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9c2d44623828708bc9a88ab3e7d86c35d31a9df8ed9e16df5fb7dd0e9d66ab4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb0f53a790a6fca23b0c4079044260e436272676404166d095ea8ea9e179bedf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65d24fab4509cc1a677a1e5e836536c76c32f4701697274bbf2fd8f2eef4dfc7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

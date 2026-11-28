class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.579.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7a43140269c06fa92ec3dc7b5afd101289046ec86342d50b24b1fa415c5badbe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a5308e556929afe70071426ecbc16b01e01c9b8f2e12261eb7971462f08ecda7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de4bc67f527d4d7ed0154d39c22aa1809932e0d5e4af9af3ba825bb96e6f8879"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a10e196dbf670e69ccdabf26af01128d188541ae0e2a1711b015fdf36f6ad2f8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

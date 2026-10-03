class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.344.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9dddd54031676f8656562ace5139dda8581caff36a2a967a511cebe60044f26f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e8a064025ff65fed79791d95d304425179720d9ba81ddb13b020a65c0be40e4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8079a01e43d1f68896bf3c8d7a9f82145a568f49764029c3a7eb15c74ebd79f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "858dc8768c2b41a64ffa8d9c48771097a9bb9bfb0c53a19b0ea6e3207c747075"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.180.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1bd5eb1ca1f15941a956c53cd037a2bd7e5545d30f0532b59bc51afe6742f732"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a365605623604e1792f534c5083e1d80dd6557ac5df88cc4b1af1680a0eef25b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "588a7a761f116121eed8f1cbb71b7f78ecca7444275ef60875428c6ce5523db5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccd8d0f4cf6adfefaaddf71ef8388cb9dc497a715ea8232382cb956e595e96e1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

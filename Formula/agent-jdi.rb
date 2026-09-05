class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.201.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f6cbce3d75e2bf47986611afabfd93c10fdadaf7f0692402ca8a0e506a1111f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "188ad4176800eadce650bbf3322e792acf0864d58fab2cf8b150af1135e797ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "633dfe1b7d2b956e4ba30d2bc9a0149310a6cf768c13518d04445fb823f78c3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b16cd183c9b9bfa4936180188faea86631ee90af50795d4d0d3ed61bea1a6a8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

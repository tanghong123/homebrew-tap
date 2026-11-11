class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.511.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b474857c391058129f5e24ef34ff7485510209664e1baf6504c03916c9085262"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "576798c5f4df681eab94eb35969ccc90086f5b80d8048bfcb41ef0391510911c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98b558f0e24276f7ed87e0bd49388d1e5ade61e231cabaa8c5c71e01db448931"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "99417c383e3c9dae0996a569fcbcb3b206de7e6482b3050135d6c09a623a5f1f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

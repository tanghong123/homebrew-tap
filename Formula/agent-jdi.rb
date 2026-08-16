class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.87.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "46baa31df9cb0fc9d442a09b3cc88a9bae4f7d1f307e5c7e3afa26a0f7b144be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a04673d39a59142fca0b70d7f349b6e5439b0acc162f571101da25922bbb1d4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "87406b37fed6336fdc53fb2bacbc689e218147e43cb90f5b23e479a349a92570"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03680e72118370f73f06c8e3a3f64f2f356aec666514d8411d34cbac8e8f1b5c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.574.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "db4ab8eb311a4a585ed4bb005800dcc2653d013936b0e50d2a8b6aa79f748c73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8a7f8dbfa11cd682b79b06442602c748100e88ac0a15a44d72a40be648ce7d6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e7c42a8520d61c5f98b7581f2626a06efd87d89a4c876c1e48b895508e7e37f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "230d8da3ca48011137df5e2737a17190d66c631e01b62e0d05fd4fef58d96eea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

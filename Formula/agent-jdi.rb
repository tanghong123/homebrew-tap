class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.546.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "37e73a903a0b4c0f2eb1510c75f32624fefbd5e4115d6fc3c09673387e24b2c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "58d4e38a662549e2e69dbbed3c0cc742033b37469ddfe7798358ace91a0d9812"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ff3591a2597f0b3b45ba8d9eae8f19b244b0512692018a6cbc8f8ba56076150"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "213d155dd6e293c9979ddd003ccae4170c0febc0568a3b3c115a108f94c3dd1a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.95.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cddc2edb29b9a934828f4aefa725eb3591f471ae6c1a3644bc764f2e1e9a9f19"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3599b9f5c56f6c28f1aac5d43f687338a81ae012843e9554b3c5469b210d2c16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9cc24de97310071fe599570f56122b56dcb356f8a28e6befe9efbcdb338d0c8c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a56f7b3e0869a8481d86dd8f7bd6c0081060037f643c2d143ff3918e088035cf"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

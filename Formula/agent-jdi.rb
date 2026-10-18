class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.386.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "339be62630c37a9041df47221421c58bedb3d9c53848abcc6deb7fe4e8bf8227"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3b0bbdf668a8d9994a0ceddec682bd545e6630c393278fa442a9ec4cc1149a54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98642ed34a7f03313510d420c346fd49429efd6c271e258d823029f549afe694"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ac64d2cf84c91b52727cb321e3b5316a7abea08f5fd3ee08083486b3b7ccd93"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

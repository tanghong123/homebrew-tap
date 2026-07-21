class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.6.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.6.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "136f47f93f1604c89a73ec78c42ca5012b97407a69fb44eb9dc527c8764c246d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.6.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f49be735b108db605dc695eb51c69c0c58db4619823506c34245ad66e714da84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.6.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d72e1a98d972f15ae3fa785aaa07a4acb044d55ffeda90ff45a12be7779a95d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.6.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3b68e3cb49f20fe42d4a1f5649180f787170f1388d3a1041121b99cdf1bf7a0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

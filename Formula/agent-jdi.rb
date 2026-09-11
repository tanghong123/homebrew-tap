class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.256.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ac103e512415def989834713d006dd11d504287d7464c373acaa0b9d77dba944"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7d66088b5f6981541cc163e943d52be266c897b3f0b47bc92431714df302e717"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31f96fbffd72eed4d7bcf07b4c7b9fad8575c645cff3109eefad9d815d2b68e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7492e564487cc5559396c6e8934ab058e0070f5647377acee439ec65abaf8e99"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

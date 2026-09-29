class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.329.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "783a73897cf607f647d390bc674f3c5794bf3eb489df889004b3651a29d3225a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "30e4f7fc4c084e0f6687e506eb8da550c2a99ee0ef65fbcc27209bfcdd800c30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5dbc6b76f44eec7e6ecbc44d6642c29bc831da471e96b280bab7125ec6b871ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "baa77bb3a335d044444af806cf90bdf70553813a499441d7f9d3a44eba8b290d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

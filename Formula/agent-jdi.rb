class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.182.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bdf2ab62e8a297371bb0f1cbccf46fd86d64cf2edade058071938b52e9021161"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e3d7e65112a7c5ada4d6154496ec95ca69b380c11075a2b119734eb9ce0b1cad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3cbe3aab5394584317508a736c1209da34eb8ab32f9cc2b98d0a01770044ad7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "008ed6a65639e44d390592c65513eca8637d7ec730e9a938e075c9aa0ddae1fe"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

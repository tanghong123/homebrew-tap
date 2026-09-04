class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.173.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c77232fc9a08edf866e1c1eca9c1797b68988a9e05f9bac1048e9acfa2f6a166"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e3bfc8b25d0a5cb37233f7d6f88ec833d1a67fdcc874d25bbf6b2793143914a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93af7cb58b6378ff56d79ce8da67f8f7dbd4474388f3324a86f53d94a44629ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4543035475e8890d243275744fa72b7d5c4cad618823e3d5609ae9cb81a82da7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

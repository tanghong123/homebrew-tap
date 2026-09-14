class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.272.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "44647c33b29c42c2d028403f06989e52ebe9aff38ebd08c4bf9f02ff6ffd18d6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "901dd6371b68bf773a95c6acc5cb34cd23d0b1b57b537230827f2f166dcdfebc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0130628c1715848ba78108021d95f4f56d159458d7ecbe161ae5a8a2334e8dd8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66a80d11af6551b71eabfc4b0484cb882d41cec592d500e5e429428fb15b1d10"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.212.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c73e27b150edff39c79fb693a59e78073dcc48394fdafb288145bc3fe3f01d2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fdca938023c34efb1434111d8ace47ca672201c38863642dff63a36a20c83dce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c38c6c317061fa830ca8dafb4eaa368e8f853d596c869f9f50b70d0fe946e58f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1058aeb53a4359f4bb5a52d39bedf25183c0abafa49a665e51db96c714f99337"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

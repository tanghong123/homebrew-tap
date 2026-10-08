class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.363.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "133d2237b83a4915d29d88e7de961509ec416be4e1cfd94aaf22fd522c058aec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1b72dcdaa76115b3d33503c655a5a44c74fb91111c4ba652cd243134531b6632"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ffc450ee66dad91e454ba6dc2e9437a8b342e88049788318f1562593e5e52a63"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2f0237971a36cb56766fff122064e5fe99992f167f490ee478463a0fd5c6b2a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

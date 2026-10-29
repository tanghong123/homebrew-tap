class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.448.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "296a778d793e2beb736591662c2fbe5ef422607fee05f2a5cdde8d1578d8977f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9814c7ceb699d1dedec6af401a201562a9da22e2791e5b3096f173b57be456f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7722b5e113637abe29c7090e4256f56d13ae0f007472b1a2b78389b4864ce836"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e206b24eb9a3a715446e3f56992db388dca878a83054535276a3a50d70b53feb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

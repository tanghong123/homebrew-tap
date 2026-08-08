class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0812cea50227f671b2a67d2da19afa38111aa00c5204fac78fcf977372d550d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0f0662f6e6fe4b946b47bb12b83bda502c5858cc8cde0f9ab9ca6995beb99769"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3bef97e731d0d30627c19b546c027fa31839cab08f1057c068cc05ad7928625"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0725a8630766f0a550adba2b1253fdb12edd89b89b74b03d1180799c3e037be5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

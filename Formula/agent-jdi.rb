class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b3c4a13a58af371e9b14e45a35ff30889140c8d2a814f7ccc31e1c198ed077ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3c1704648219c3f752ea3c5afe724c41cac82035bbfe0213f5946187a7d534ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "754f16e060d5cb459b0307e983c18c1fa6c2626b731a97043abd081568065405"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5bfbb4bb7e3f1f38e17fbda15897b371528f51865f9c398a5b5d989ace9b97e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.27.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.27.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "71a8a646b04c8f2b434ad593f71c40e04e43637223cdcb3e631ac3aae7b55db5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.27.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f337fcd1570aeee0eb1bea7170969dd31000bde0832bdd34698a4fb46c568d55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.27.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7df3cf50234a4173241d2d8295f9d41a3632d767dbd1d71b7726b3f3857a355c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.27.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9e82d9d54b3651316c39fa738a8951a32565eac120ee827a90b654431bec48f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

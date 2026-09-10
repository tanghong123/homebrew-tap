class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.248.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8822a01cbfd75b98da09dfb0654fd4c9b0c564f1fb72a68686e06ba57b721099"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4ab0935bdd9d308dddcf09a14906b4ea83a1e6436c23328392920b67ec538e0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb538f35306ed95052e37d8f2cc6a1cafffb9d489f7e3669b889cb6fa32f37a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8547feb1903bd256dcac69416ace159681954b134e5494c4ed5aa40d440e7978"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

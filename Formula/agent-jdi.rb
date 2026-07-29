class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.2.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2892ec67db1d90bb90b3ff8a357e86e414fa5e3830f7dd98bad89e977f6e67d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b9ae1a2e9f69423ce2d1155de6b0b87cf57f46f1dff704723887b9b69a620291"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c46809f68b6b5776eaa9ef575fd89b6725ee05b36a885e194f707ba55f38d92"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aba58d1a768dd498ae66f528d5001993e0b58c1b1e23a05c9aaeeea8fee611aa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

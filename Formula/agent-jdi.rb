class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "aed62717614afce3f58a0a104ad0b6c6a0bd35bd16a853d4ca4f27eb823977e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5e5518d04eabaaa6709eb00ee1cab317a1edaebc92f63d729450880607907119"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a8ce3d6aa138bcd4b579c4095e09f581702b8db7a5ba3f19dc74c54060e35bb9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "630179ed967e642f664e2894cfaff75c204743d97c2ed29a46f718465333d7aa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

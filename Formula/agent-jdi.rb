class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.288.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8f96c29e3cd80228574ca7507df0fe4680897892731823d912f76570e987a756"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6255f7e43cd580aa186a099b9b515da1570abffc3adaa3e6ac93ac8754729950"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aad41925aa5c67f1f8e6c34275b8e0a37b954f3bd6f077b6bd0d1db53975b606"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f95cf5a1b868cd3945752949a381edf7b2abe7165f4ea6de2c54e500d52a64f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

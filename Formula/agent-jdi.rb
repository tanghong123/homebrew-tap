class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5cfaa20fb198dcfd6fc8a47539cb80b47174654bc6ea1eb41b93007005349dbf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0a14f53a4e0fbe1f284001624a68a2a281a9f5fcc644dc176998545af8474549"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "588836da297c7c782a402ac935547333b3b2d3e8d3b1ed416fefa43009cf57e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18122b86d7986cb5145b8f163a4e48182e6d5a045c3cba4a64a339994f4a8d03"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

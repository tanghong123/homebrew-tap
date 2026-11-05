class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.471.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a5e0a038f13d4571e2de5664b6ad8ab3b18dcffc4da437653f36617d79e33905"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e9713731690392459a92090e5f6c002bdb9369c5a868c9223ebe99f73db69848"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f4a2a3804123a8857cb5f71c13acd490a310c3c981c04926d08ae89820d3438"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b51b6d42581d0e0cda90ef6d64658e9dc3c904bc705fd8d3f1604a95717f3dc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

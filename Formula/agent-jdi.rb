class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.271.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "dd3827b8077d13bd0f5536b7e8e3c74b3d9d7e5331792114547472b866e0cbf5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "017ff4a6b077d4405a5a71666648964f4e996866f643ec03b3ac9bbbede5a911"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60fbc5f1faffa842abba55dd22d01d6f73d0ce03db91eb6f57cb2108512f6c77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ad89e712a93a65b017de3000a3bb36e0906247c40934aaa116ba477a5089136"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

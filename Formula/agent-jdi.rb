class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.165.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6df46309efae89e4485ffe2b0a4b541850248963e3119a42ab1f03d2b6fa3b7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "041e9dbf0cd86e325238c146fa18f3f2a954617d88169441045842dca20c3517"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c630cc92ed6b9519b5b8f21a18074560a55c637db04fadc0df82b33b663357e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b87dc62c79fb54ce557b127a5a6a992b4d5108f7d789e49a0bc74e07c4d96419"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

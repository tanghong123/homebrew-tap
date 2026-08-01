class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.28.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.28.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "044556a4d7bb80d53676cd0073edc68efb73c3c21866ccab12e8f218f55c724e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.28.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "502ed9b919e313e24ae90dbc607c97f3f3c9f572e5312c98fa0cf5e50c6bfee3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.28.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42c495f75f13464b32b142733389ea3ec21182e5e740d571341af8de10b82051"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.28.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1b8620601dccbda0dba1158e308a2ac6fffc4ad522b4c41b7a60134d0a5e603"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

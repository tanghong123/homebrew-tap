class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5ae841cc0f63aa904fcd24b2aec23c7da73a75c58b92dc3a10c7155e8a298811"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e08987df98bb096505dd2b44d7cf1471e9793d4061de4af2b823ccf98a80934e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a6c14fd6765db21b4cdca49a7434c3e7d600c28b5992d67fd39b924edb88611"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "925e99e9f3e6d58d871db56f4eea5043421300f40e4debc4c1525e00d055d7cd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

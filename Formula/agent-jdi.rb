class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.530.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1e61f765d668333568bcee3ff5c3c7e26764ee43fe06ec10201c80612e0352f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "41cce593d5199b09d03955be8eff611e5016fb3b25e2dd4b30d78811a23eeabb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b27e42f52fa3e29232ec92313d0ade0874563ac61836b39534d9eca17bd74808"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccd0eb6c247db87c77405752692541cea486578d85db81d4b33aa6add28493e7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

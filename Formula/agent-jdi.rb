class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.320.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a5d5575a3ab0793c070c14dba8be2da593c5529a178def6d13eb916ce7adff11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "93c796a1d20288ee11d711bd5e4aef6fe52458d80aacb2388d0dcc0c0956d9c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dbe094c3bf8df35a91b1c64d1bdf4f1badd2aa9a4dfb05fd77ed1274bb3f18b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a661512d0cc9828c9b5b0500abaf65dbc416a44704961da8e4b9d4b71f5575e1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

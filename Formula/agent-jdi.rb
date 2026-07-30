class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.21.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.21.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cb032232b091e910486f7db3ab7bdd6c95f334ea1fe3ef846714f3ff774c6c03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.21.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "eb314df88aae8335d401ad3a6def2ebf93eed1d5d09873058508d510a338f449"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.21.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8abc6e5a340e6621ceeef4c6804aa610c894d4d30140b0f477be0aecf9c807a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.21.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "383464fbf28257dfff29c1f92099badb7490864a137ab5724c143c81420e388f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

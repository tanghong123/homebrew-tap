class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.576.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ec9cbb1e6a3df2e5af111fd024370654126618a9bcadec5d0f5778e63826dda2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "98186b417d390fe0ba133fa6326bd94039fb045a539338d2361e34d36b0b6696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "029ad277ffc6506f5355ab8dbd39da6ffd43a4990518a4287c3f57b36544be02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7433a7b21accc81a4e8b416da422ad7d13ec23c2990b990a813bfa61a5994de0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

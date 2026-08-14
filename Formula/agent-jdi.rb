class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "df5fd6c1d74b4a77c4dc811c17ee840d8ab47dcfb268311c17abbe5910492a17"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8acab7e332012f2beb75f2eb4efe92f551c47462114139b74424ef533984c6c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67fe599ff9a1ba3195ab39fd82ee8c56d25c9e84c08f1797d4dd6fa0fdc9cea0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b44185c5737a2d3bc208019a45e949d2cf26c1772aca387710fddce90696738c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

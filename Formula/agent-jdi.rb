class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f11d083f89ba1e6945258597264957f3d80c83136ed051a43a04b682e3b76a02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "43e80f7e00ca15579a240ccef97c1b612e10bea08bf4457214c3121a112b0d4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37a6646345a69dd2195e81a2779b2167675d28f3bdd66dccb844d776d930c0c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64e183729821f994aca4b152e7a303c2c3488f34d6878b69d39361ea3b17614d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

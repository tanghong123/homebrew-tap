class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.5/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b8ec3b408ffd778aa20553236153f739b291e255d7fd56a47d8512760f0a8fc5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.5/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1a275ba058f3a11f9e55e95047b3274f0f0de61ae091078106658e1815d0152d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.5/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "439106278a3d35fcf154a70305629cd76bdb7827abb0a362cac1113dc3caaf8c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.5/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2dc090534933e1406246f0f7ccaa179c58a246ed370aa7cdad4dfb21a7616702"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

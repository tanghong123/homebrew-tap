class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.22.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.22.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cfe35728ac3ce95ad70845c0f2bcfc48783d106feec45fbbcd6db68edf6bd6b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.22.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "986b4c0172647a7482602f9194d811b405f18b945cf21f2409fd436551ecf881"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.22.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23c81caec966ad0fe8a4be5f5198831d3ce155acc139a3835373603f9abda5f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.22.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8fc3a11ee9dae9331cd9a080a44d20784c544d2825552d2f8fb332bfedf98d2b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

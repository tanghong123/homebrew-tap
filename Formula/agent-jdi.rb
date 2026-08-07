class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fc89b63e34b31f2f1c5f16e725c3ba29d3ca62fffa02740f962317e07ffa8a6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6cf241243cf330eee0ca0c8a8b8b31b477a6e83355c6a185f1eb6f7f36fbccfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "723164d6c421f36cc2c9f3ecd13e17e7a0b77aacf5937d3c8606a8c18b986371"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8a69c5f8952968341468c49b82345745885b562acff02e3410a455b30833c07"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

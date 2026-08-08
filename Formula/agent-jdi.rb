class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.18"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "87c7fa0d5d871f4bc6814f0a34fabee502f3e98fa468e8197003aca487149d8e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b82750df78d76c810071568ca55ee982b9cef16033927863ff6ce76748d48b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7658cc770392cf4cf7cc7240a9021d4cf9f98df5a4be5ed08f5a97b612b6771d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7787c811684662e1dc25e75f7e012dbcb6a41c0077bec4c4eac3445dca97a00f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.314.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7f3839090b6b61eb604cabc389734fcfb6f909445b7055ee9bbaf1ee6c67ca5f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "80d9ae3cf9b701c675a102bde273e7701cc2c9fb2bd61c23f0bce6ec353af792"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "785cd26dc00d43dd13b7e52cca3e4bc49f4fb7548eac8eb96d8a74d500960359"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10194acded045e885d1ac43a71c845dfdbec8d47b22b13b966db6af3afe59e9e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

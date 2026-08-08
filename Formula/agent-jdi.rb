class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.10"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "30919d76cb1e68ca10e5bac7916fabf5c320f48d5f4a778f56b16711c91d2d34"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cf93c6eb3d20647a9b3dcc15d235608ad1e6fc5d49cc24162119ece14ef2fa57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c909cadb5ed0f99897e7bc495d2daa7ce79c6975963510f3766036c8e692cc8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcad6a661f201eb85119ec1350cf26927814c47a6ed82384843d1e3c9115f40f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

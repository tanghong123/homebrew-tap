class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.310.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "386798968b29aaac53ccca376a645e3d99011fe603dce6ce6e0021f1f6a4a1a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "60f85708fdbafa6c30c96e4b06c44da252a3135cdb4580c0709404722fcdea36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5653139b77aafb291acf101975f827f513e9d0b987c9bbe400f917c02e9259bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "571e4f8abc8fd45aa4eba8c7f453bd9765ea9bd3d9c1bafc395582b7fbc8c3e7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

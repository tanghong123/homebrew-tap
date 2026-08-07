class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.46.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d7dd3966250132828b546fcb0aa26d24f415b66d6067620a505392550af2bdf0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d36bbad721c4f1910463e231434da386ce7883074b3e95cb7278f301ecf3d46a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ed8045ffa9fe989e64ef1e135e832c6b2d739c66d80a21bf3add648a678afd8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bcd871563ad541e4d6720ffbc63e6989b236932cecc928cd27246969b4a34c83"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

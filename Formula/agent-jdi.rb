class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.525.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9128bbb3dba2a4a4a90763fe709eb767fb84439498c3093ac4d6b2070ef40bfc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c99c3e2016ae172717cd153fa0e76453a2a097ec71cea0ef7fac4900e148d355"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38930ca7570ba9229c677d093e133b5c51d53189da18ff003df62e597fa94c75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87aceba11197f24b638586d6b89ef19253bf880f8ebb939bc53f0dcdb284a3ff"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

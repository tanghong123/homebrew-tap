class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.126.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9947048cbc38e009d96f83969e23cb3ce3e333c7eab586172b17bd0a1cde2713"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "72e0a25a8a1b30b565915905de09ddeb0e7cf26de8cc07827a9865c3da23083b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be64774b29301cf73273ff074f76f9e8de6b71d5f4461a5dc93b8f463eae3fb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d16996c8228f6ab1a4dd016eebdd8dcc69127ffcb7f13116d3b8a27093e62533"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

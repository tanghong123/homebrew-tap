class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.469.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1efc2cd9704f584ba4e76f56836b6a13830234a22c6463ed2e3e8092d42ab60c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e68b3d85dd00cbdd6d3eb08bbfc91311d214b59ebf5ae1e15edb6add914eecc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3830290d9a203e615a0b04408dc4c54dcfaac9af99941d1116de0581840729ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9ab11aeadbb65b3bf99caa4fa21bd68df9e7b4c279a0a5dc2ebd5444860b3c5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.418.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d61b939eea120ce8d06e56d7586211c66ad945fce1472f7269a9e25f1efc7c88"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7902c9ceaeaa58c68e9c45e0cc8584fcb799d063d86539ee5b84f34ce34200f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "815b1ed17e3047609734bad85572997cc223fa96613279486313ef2333d1a6b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4fddc256d3c0d0fdec05ff5aae9cbd22b6c23c7e9692480336604ac388c5c4e0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.275.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "89661a9217bb5d82bd2b540c63e6ef0e42b56d7be7fa2f59bc40cb2bf341629d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "866ba53549de45493226e2e6772e4a1797a209fcfc4ecbd38532c4be1422cc29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09e86a7dbed44ecb237fe49a92bc87a59f1fdaaed1b451b7ee90cf82c3117ba1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9f0db1da4fa2c3fa9079d38377f52ca7088385344698b141837c1995a560e19"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

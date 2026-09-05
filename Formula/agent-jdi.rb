class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.187.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bf196cc655c42e362d5ee0cd0586251ab31ef8f304d324c5ff3dfda1011bade0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "71cd4bfd42cba675e2047ef36eb06ac20a7c3b52a605a711828f4715354da4c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31810c5a551fbea888d5cf322b4a76b8540ef08bdf92886754904283542f2eb1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5730c6e6bfa4382e900bc42526e232db29db1da596d7dd7737eb3b578b992d18"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

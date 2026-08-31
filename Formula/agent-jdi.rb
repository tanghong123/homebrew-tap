class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.123.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2eb157a0e102dce8aebe25938efd81efd1ef780388ac50158ad4447970ba5414"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "56c53a4439181d05114d734a5fba42b352ef9e05238b24db26863d4b845bc504"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6248854e8c8d8657c7ba8b8580a23f3fd7750746838418e91331589be6282d9a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ffca899cac882be51c84e7500465a446d81f8175160c096f94cf5240322266eb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

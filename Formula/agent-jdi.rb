class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.190.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c7c9487218b9a74e49ac9a8cf8d0921b7fff10ce87b8494771a0689d478a4308"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d69f52f6bae3f2e9949eed50a5aaf24035e14331d8807a0a57f5b754ce1ef380"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1822578b11373f977b134da7d6241b7f909c4e4bea74ddf52776bae118c61cdf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e091cf4a8f1eb13a3fb70fb00118844ffe0914b116041b62e9cece1d947251df"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

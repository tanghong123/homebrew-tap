class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.403.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f2f03124462083c9e21e13b577d7cda7bdab1d093faa3aa13d120e022508820d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "802b9add54f8d7f28c1b9f7e212d2eaddcd1fdf4562e656a262ca59f7501bb91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "865027f4f5d545d8235e4f111048a0b8e7043cb23f099a43816ccd321c1987f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae0cbae4bbeaeae4e22594eb325818c016543e113f706d6a2cdb051592ccdeb7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

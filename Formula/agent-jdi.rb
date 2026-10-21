class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.402.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ddd146fdd317580a57b20c6c228a36d19f5a0060a592eb5ff64505eca787ec02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0bf0fa5d915687c2e7dab66233d2f5374ab602f46e4ca111db00baab4b75a209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "242bdc4e55090644e65fa315c433e96d13e4d01943fe01e247122175a5e7abe5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5504c397e557a59e14da3b0e1442fd00ffd30b8cf74d4f6d25fa05587ec4406"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

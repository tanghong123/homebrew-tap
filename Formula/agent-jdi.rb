class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.374.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "500b8af787b7f577339a917ad1fc359a2505e9c7c3024da6ec211bbd14a7f39b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0cd09bf919aa7246202d34d3f452407d6bafe0fefa697f05d7fa034fc1af0402"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c79f4d924d132738ad3efc7e9f93b4c7ea13aec516f952643b1dfc9ab92e7b87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6613a511cdc3a0e49a311b616e73eb63e333396d3b666d091d9e6023546aa6d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

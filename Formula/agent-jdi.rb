class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.516.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7bd79f8d32879d24a2d14d3be772dc8afe742f33acfb26e6edbd29a2f950cbd4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "dce2a8af35785d505890a56616d26e8a55f6d06c0f39bb172437b294838839c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3aa35f0584c1c10bf1932d02352804e44388a556ba08e51065eb1f5d2f50e22a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41a17da7dd22f58cc1ff396b29fa4a1770d852fc24b5d953c49ff1bbd875e4e7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

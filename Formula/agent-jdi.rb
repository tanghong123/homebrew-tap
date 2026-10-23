class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.409.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4bbf406c244c779f46bcf06e7c9c09a63849fed950e520ed18cb83a4817c590b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d3bbd7d874ec1dc19fe48cf231bf78136bfe4bd92ac650ce91d92b0586a66282"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "99e21ed685e5665a5ddf876fdfd6886e9159438265690941b75cf26f23e90e20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16211602f94556391e709c910561f64d433450013cba2f749ee15a8433cfeaf5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

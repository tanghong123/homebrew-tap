class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.257.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0b755a3dc1bc92f2bda5a6ebf4df345fbcfbe33395b54673280e90686e2c0f4a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2ff0eacc3c88cdb90e3aa2e2f1c501fb7831120443afb4c43d0ebbc247d4c46e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad0290c5382d81420af3a5640936e28dde5fb0c8e8b1927c4d3fce460ec3a315"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dbd270945acb2d5573bca997727f6cec00881446c0d50bef0fef3fb7cc74bfd2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

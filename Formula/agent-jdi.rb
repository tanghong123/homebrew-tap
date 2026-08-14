class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "73d5da487e3ad9500b99da92f2df6399286590cb1339e0fc41af02b78ce73039"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "54afd25ca3ff0f0258b591cfb7fb5a1e99055f7ffb8c398c5115d429442c40a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f9e5f714605447b3c4baf6237462d27b9bf1f64f45690c235b2948806b3d566"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d59b59150ce72cff192e45302b46eba932b7924a695590ab03dd623c75502d11"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

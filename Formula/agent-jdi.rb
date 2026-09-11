class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.254.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fc28a10517bb2bd8491dc57f5ed7322f6d77a33c4ddbe8ff378074cf6a170cd0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "32bff1fd4caaeb67a04509f1e892b58822fd3b64c685f468c7b86bf46975a4b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c695d91d45a0c3d30feae1b9d2784ffb803af27bf69946c8fd27483562226e70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3dc5757451ad70720597715184c0fdcd2d946d5912dcc7690125051aa556d2ee"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

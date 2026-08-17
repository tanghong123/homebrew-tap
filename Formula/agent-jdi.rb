class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7ab5d9e2efbba3a2befa2459b3a1fcfd09f784c674c33399d8909a09fca890b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "bd2e7c50d41357f99e34c2ec972d3d9c098d6cb0ffdf05918b49f4678b1093bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "11a2fd4abec0df7151553abf6e28bac68e626e1108b5aa1acb4fdb2109e158b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0936f7e5b1f0fc88aabbee655a61abdef3da98e754f35039520b6d2d42620398"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

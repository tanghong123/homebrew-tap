class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "47d323ee2a321532b70bd42ec1a96246888eac3f3ac54c17e9db2c808c98f3d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f7a5e3b9376dc11c18fdd1812d07531077afaeaf738f3ee000211b7ce2124dfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8b3c8fd172065057207e7bf61f62888bb9fe0b922ee3fb36f35cdc08aeb941c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f2899227c20ae75d619ccc4901ac7a599de1391dbe126f41a5c44c3b6b4d684"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

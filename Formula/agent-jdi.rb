class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.28.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.28.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1c16bd6fd0424975b86deebc7bb3dc1c41aa44ab09283f06a30739f77aa6ce94"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.28.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e0e7eaaf9d48d3a9e9087d423a132f31e4ea1d59abb6d8d5674ccc93921982dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.28.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aacb4aee10d844c045e4f07f6d850ddc3f8c94507dbc6e461fafb71504f84677"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.28.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e82e7a01b1e4ae6ab0a09f39bdd713efe246a7b6d088826b4869884c9197daab"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

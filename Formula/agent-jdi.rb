class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.13.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5ecfbb4c25a16eb053db77d97edfb9df22b90c59db67ff50119a55d0999f092a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "87f9a2a055630a643141de249b1bb21fec69ad02a0ebec4d79a0c8e90ed4e234"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0ab3ffb7cb5820f50d1dd78ecec0a734cc39659ebfcc6cb89a48a9824183c65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "381db8f003d57cb3251a1fa1e8cc8d211b529f70ee832a05b4c386bee7dbaf7c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.243.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cc74cccf6f5638c4afafe4ad1acb725b5be43ce15c044d7952712db02c9c6d1c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d2e5c44f06f7c63ff7efa0bdb80b384d72b37402d5687e11f2929b78fddd4462"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b419defdbb6e9cf9ed4931f70af97d3cf9ce528acf338aa35bf1707c48ab463a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7f702521cc0cbe1e48d550cff2b1a301183080421096f3cb199db79fdf6646e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

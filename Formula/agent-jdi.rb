class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.549.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4a159e99cab555752074643934b1b69cdfad9663c0f9938ac749853c3a11b538"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "81b39b5156766d8bf2cd2cc3f73b60864aae1f2a0c5efee5bc701a2cf3fdeae1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5cb48eed807ae953887bafd798d29e4bdc5bed47e71a8f88d6d631e02aa928f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac81b15d481a0dc8e3f93d2b6514e4a70f35e27ffe599c6d275a2f17b9a3cad6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

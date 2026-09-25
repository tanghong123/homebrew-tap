class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.303.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "998af92be050e47f7b7b46dcd66e30ea322798cf562443828509c341241ff82a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7be6cc424c997537d8e10d280d32517b44e36d9d7f05d26ddbe2018a3ea55e34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74d939cda9ef4edcc0ac607cabe0ec6d2e8c7ff93467be2942c45e7c0bf8ce91"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2eccd39ed495278aef003da8001b0afafa24b602acbbf28fd044da5252c9440"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

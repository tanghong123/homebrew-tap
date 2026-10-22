class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.404.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1e12ffe694aab7a903eb144623faceb046ec20be4a8adf90bfa4004c52b83f2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cb167ba110c9ab1659a07859e6d7c472062727b23a28c54b3404a9005a53eb89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4292a749ae06b9fc7a108c7afe8acd9df1e9042f7c06579e41a9286a76efe9a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d60717e06b04a315d4291b2e313c9c20829e77be9f1fcd21131b731bad75bca0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

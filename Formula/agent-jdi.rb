class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.486.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9b59aa7639ece28157244f7ea73b74331d3ab1ca32da0c94e1f1dd45d1f27836"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b3c957ed56af52dd0ba4b11a7655427f79d528f3853b4c82ff3606f096912b68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "668c0e81fd3c274796fb543dd01cba81f00c4fe1a7b5a4c4f90b66c515e896d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14467f15a774978d4ff5843de38fc81f2d8f2c730a3513c15ba762a67235862a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.13.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7d282054cd4e862ff418ca06caa803d0ca47f81d156c74566aaa93c9f9090f38"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3c8caf0d9b6cdfeb2f6aad9f6a331655f9b71c60c876e303419089caa5e6612e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3feca40f5c522b5dc6dc79b2a541ade565b82d96ac5a64ad11a4fea2f652bf5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb9f5d403ba18206354e9f8e91f7e6477adb952990a711e3e1c1bbd6de5cfddf"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

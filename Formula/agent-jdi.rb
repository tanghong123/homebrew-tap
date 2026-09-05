class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.188.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2711e566257f283ee2a5e9134ffc2adbb6f6c4be46a9a2560ca7a1eb4f1173e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "05707363bc9d3cd04adb33a04c18576d3ddbb44915d2c2174da979a24eca3650"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce7ae65c72963e4c01ed498ffbdb78a84d964e8fc7eea181b1364c745c32247f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24563bbc6eeb2b1831024241ba94311bbb9f86bf7b00f71b6f6541baa16e95ea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

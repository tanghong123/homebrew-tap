class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.485.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "af61d19bfc2c4be51a53db57f3533a0170a2c62f06b89d434ce2920ace63bca4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ebf70d76c0b85a33bd7aa8748644af5a400844618e3bfee43f96edcd560520cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58d036758b905efb7e36b06632a53cfaae798af19ac57eceb33abbd01ce63862"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d5df572678adc1eb4f0c24ec04182a3b222d1306eabb0b35e828bf7ee90acab"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

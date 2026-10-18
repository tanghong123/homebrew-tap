class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.385.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "10ca8e2dd7b333bff09f526273f0e40c534ed08d5955f504dd1e8de105ed8811"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "27b75b816100d37570b62e48e3ec0c6e08fd990bfcb1fae89200e7f0fb6ca8a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1cb1f1b9b6cae89954fa2b486cbe7bf72dd82abb474ade4b21744509b6d064a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6886c02b068701992f11a6f31349aac5b1f04eb3ba70361150e9c4dd97582e41"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

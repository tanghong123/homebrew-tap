class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.305.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "08864c40b9d03749d2b2dc31a670e136b349ca6c3759df567f73a7d9dd982426"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6fb9994200f1faa47a57ef92d8131775f92ad9df91c8dbf4921d21676b601574"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e971d286e2580883e3f65661064395b42be0e7a3dd9537d0d34fda09e350cca1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61c1acdb1e1a10aca139f61ed4ccb0e30e49b0f6469b11912250599f10845437"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

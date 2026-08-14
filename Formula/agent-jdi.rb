class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.71.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "aa5eba041188a8c516ddc90d821e49c55e4e9987344a3e4e881edad93f4c5faf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1771a358b4561ff48750614f75d4dbc2683c8687f7313c11d68b785f18bf9e3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3edade6d1f8cdee90c732cdb50af13156fbb91b520e2a2359a44b02bfd28b8ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ff0b6531d243b9766e62a915fd3b24a001378eb2829d180cde92bad25a1980fc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

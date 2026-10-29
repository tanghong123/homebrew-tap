class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.444.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a64af4cede1e37b5e407aff95d564308611a32b8f96c681c5a88f7ad75b56644"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "caf9f5cad39b348437f87feabe1545e4f210600358ca4c0c15340234389b219b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dfeb8be151cdefac64a89c9e73ab7cfd8f03ee168985f2adbfc6c18e83b3e330"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a09694fee5ecbee9e9e091589a6ade790c424134ee545bdc373cb11e9433444e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

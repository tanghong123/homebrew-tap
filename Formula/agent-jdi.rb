class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.33.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.33.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e703b064f2972a5962f1041b16f3003f27167ea02beb1004ffbbe6498d9d0391"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.33.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d0e22c5e0c2087d46245320d49b3e00594bf6e31e54bf7fb3d4cc6d4276542a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.33.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c19e44b3059d69358370562128a8ec2aaa82bde8526654d2ba61408dc674e338"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.33.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24070ea97c469c80516f2b2446cfa21ea5a0c210194d0b155bee18d3ed697462"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

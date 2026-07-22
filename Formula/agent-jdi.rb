class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.15.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d10e1ca0cd30a15597de09e26dc4d2b8a303dddb111e0bce1e48d68b69888017"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b0c70dffeb1221a23d9ac31a0b0476b655a1af822b47965b4f9d6741fd3dc26e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7debf482ff7a93c10a49479d9c56349cfbc5d08ac84d097b1f289cae58b8a16c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dbb4fc5dc0339128bcdb486bc3dc43742199c92b10a27bda0897f05a337a63f0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

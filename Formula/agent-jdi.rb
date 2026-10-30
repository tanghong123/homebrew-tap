class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.450.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "30f82c804131ede33ca5bbbc61f018a6dadf5e8f5c516c0c40ed9f0e5107ed2d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0e7920534fdc8980fbde3cdd32da64d3ecc7e3b119022662cccba8a48f6d1cab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ee704cd7f82745711fa5baa716a911a396e279171c22e2a58432537cbba408a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1a97e4398000ddb131b0fe7bdef54e3633a17bf32ebc0e11d81ff62189de899"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

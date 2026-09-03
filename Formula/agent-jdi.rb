class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.144.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e4925ee1722ad4b1746d7361eb49ab283c6b3c6eeecc144db2b2e7a76256acfd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "260a9073e7cdf3352d0ffdc5d6ccd7e43f1f9fd061eb2e6aa0e3aeeff6210799"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "40147b9609950986b26602a3b3dd7f0d92427898d6cbf49f63ac1bbc2c333acf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d4277876d79e146b1fd572cde1b89ae779504141f691d3d2d3505c18421c7ee"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

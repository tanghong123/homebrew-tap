class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.91.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9eb02a4e31b44465b5d38665c572f3646d513fa917f638879be6eb6f275f5427"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0e77a971958d7e52dcf5f0721811fb9837eea743cf6ec89b710c46e13205e7b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c02e3bc56db23cf24cdf1feaa6daa95cf620498e4ba87937b220290b452dad3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a076adc4837d31a258b04d69419207f74fe8e0e91c2c0623a0fb3fb35d40ee5d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

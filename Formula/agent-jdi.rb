class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.302.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4be868c3fe558ff9b78c872888a72723770c86109064fcc7a536d8e7f97b7a6b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0b13c95b0042e41538e4e08534407cc6d2243a5b15199292225c9b2bd27b8c45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94d7f5eb34263d2beff35e4a87caa686b72b2002c997f52f0aaa10576055c46f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d90b6d5aebe24920d33a027004cd4dd4db14cf16850e5c2df52bec84d160442d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

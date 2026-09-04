class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.163.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "dc59f4971b11be9444c94f6a2da7484d758ed16dd96845ac95ec3b6c7d739ad7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "50464f7f81cecefe42fbe6f2d530eaf2e98c894e85f52ab89938023c0b5898b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96199272e0d196b2d5f5830b1db63f46eae532212f3dae35f6fafca8adf3d0fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f6d39b0c1283a670d3477e6c6002b31fd09daab1ef7f7ebf5028ff46c08210d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end

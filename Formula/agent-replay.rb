class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.184.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "40e982f300c45eb121817d19af905778f2c4c3ac67b20e2de89664db26b9ec2f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "96ca7a8838588b284e32d31de5eeb561b4be652440ec10b46de2b71698a669c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df06583b8f9c882bc3e9916b3719ef22fa87fe7dc22e6864ace5ca3f5b5adb28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c1061235a625e928c9f52d61b133b2bcbf4b46cdf610201e3b4c8d05d56fc62"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

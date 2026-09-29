class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.326.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c7bf0bcc404f1764e9197338b71874e55533248c9db3c4b215ffb2c35302a60e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a53b984345b4c9c1d27649059e759e2bf71bda49fca6ef05098573f09980824c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "73aa4cc5e10c594b38a0c3726b337a7c5ee385aef6c54ca6da73899ed2718c0c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "baead484910ad1716a8c3faf36755a593c0b48127485b761fb53647e4db15d27"
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

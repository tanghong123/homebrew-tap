class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.101.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9486ed9f8eed90825b115c14c7f49eb8307f9659aaeec3cfcc0c3e0c4c66645a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5ef3e96f2e2ac3927ccaf884464dd7b71f6dc4e5e840bc4256434418c3c4b266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca4c48ba378a511019aee724e181e6f708a8cc6e9ef123d12eb92824fe28c972"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eeedd283f55f1f5d5f8334f2e863fb218340ea316774ff05a6ebd6c6dd3714e6"
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

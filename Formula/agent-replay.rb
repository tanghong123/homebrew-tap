class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.379.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c6077d0269260f759bf37fccfea547fe6f3e864f9a269ded15d7099f7cd03dd0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "35212655de1f6bd17bd1f6a07f09aaa647b93f1096e58b50995161b24a4fbe70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "750b160c25e02ddaa6f740e61fb9762d187e3540a2569d593899f877fa32ff65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c7b79e3462d197fea58f55cd016f1a0714743f115d57e038a1c8da5be7d1bd0"
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

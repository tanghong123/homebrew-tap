class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.131.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bad9febc15be7fa44ece9177428c9ed539a08b8fe7b15012ba3116f150ce98f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "feb792618934ecb0fe8b6029109a53fc62ac7b9a8a91b1cfa5098fcf556ce5b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d2ab0a30901037deec91276c46f4c9dce17c1a1e931985e2f1a134d3276884a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74111a7ccdf2745ff350259f181fcdd4caf336393db614f8bfd8c3a89f8bb715"
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

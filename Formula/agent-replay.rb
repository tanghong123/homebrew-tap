class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.129.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b017a3e6672ae08cc6be89710de3316072d37913992204208e078092dc32c012"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d97609b15925e4c0cc99b2cfd8e2a27f6332783ab5a86b581fab84a8a8f0b300"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "34c34ed7f45c446260670659ea8992816e05d897ae231de3a3f3c461bf40ca25"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "470630a3758aad81b047621136412132e9b87c7c948fb19c79caae191c0a460b"
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

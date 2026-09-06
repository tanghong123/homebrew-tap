class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.214.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "62346b561178584c0f6a61ba2aa4bd21e75bfa707d7db4941e0e37d76243d644"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "242e68da35970d36efd3fd61ea25cbc3c312a2738886a2d2a83cb06f36808bba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf6553004b3817b2474d7db9ed4d1de907c73a17e3950b75ba53e6548dae8bdd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7bd19edbabd942ae7acb7e62407d455fbef121495b57872192261a447fe057c6"
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

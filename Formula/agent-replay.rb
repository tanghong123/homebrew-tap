class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.361.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "28d3e8036afeb327164c2f4c7542cfbb370752490bb818e86bc4b832b0659d75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "51db086f4d3cf9a9e5c3514c1b6e4bb856fd6d0846c689849e4aeb40d7231d34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f372ddff8158ceae7a1e17b0264f9971f2c362a9bab2109c97e8297e965556d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "266a21724229d8c469d2d0550bdded49b5c0e08fea2c3ebef7cb39e11777b0a6"
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

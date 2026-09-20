class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.285.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "49707d827f75a862998870451b9662d318bef7aefbee35e42c78fdc2cd6da73e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bcc8b89afed1debed6347ece890919bedcdf9ea2112270b5d11c632443a4962c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b42e5f3e4afd17636315901e8501548abfbfe870750909ef830550db6b9e557"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e56b941fed26944f4d3d466c74af39bcc8f9244317e86868caffa6ec78f26581"
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

class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.243.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "60f8e0964cebb48a77a99f8ec1f244e4bba236bff9635cbc8992a5e7fb208172"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5d05698c351b28b8ba174b9eb94d65dbe99a7ae3eae6a0fdacd9b014bd2e55de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5ebd2d6a63e7c965f5d8970572094b74b97bf6edf252535a5e97952662e9ba3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d7b83cad802c4d2f796db1d8f6b934415082467e27ed1fad67bf3fca84f209c"
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

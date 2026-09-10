class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.249.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "db57c452cbb267cf16378c855757bcfbb8f534566525066ace22a6bc737d09f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "012ed80bd005865e4ba1369edd69ee09079a25df1681d81ff518495a7348084d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7710cb444f7b55999d3720921ad49b6f6c70fba255d01b9f69849d4a91a96f45"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb133a08e6c813012104636dd87a8ef96693b2717145fc3fae63afa11de03032"
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

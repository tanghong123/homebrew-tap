class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.468.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ceb9a23241090b6d9d1f5f88948369d7ad76b9ca5a34f621075b18f76e7c23e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "616d2cd93432bacdb42d2075915767a83157ea940638dd1b60455792b9591130"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df96b1eb8d532c340aff6ae1656041681a424565a94009b22fc3cbdb3e2813ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e52d78934c08952f215d6bc7cf21951c32af6a62bd037e455510a556a65cec3"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end

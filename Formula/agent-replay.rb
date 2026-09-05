class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.188.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fe24c628a57c9f56916cbecf7c67414b214f0c333f1314d04c259563c6f13917"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "227e653de1798afc2a958454f30ad956b6b889e8a0c432fb638a5a7c3da3f9c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1412ac805e4c6bc0eb43548cf52865d23564f1869f2c175ea432eaf71e5b26ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "691f9c9a9a7facae691db717dc6839a03bbe1c8dfb45906893b7ef2a6ea1e012"
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

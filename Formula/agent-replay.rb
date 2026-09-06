class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.211.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c8a9deffbd36d25b5a3e5a2ba6bca53df62a6dee1202eca2f68dc072c978a742"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4ca0cca7db37d2d9796be926dd16ca714a4e89ef18229767a6f06e3d06bf4385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db05cf70beeadff3f892cedae9695d8036ae9e82db0b406fb4b19cafb20846a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.211.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b058a6a909cf9a13186debb5dad404182401a0b7e20c65d05523fcdcd57b2f21"
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

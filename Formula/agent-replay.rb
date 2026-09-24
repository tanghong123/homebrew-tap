class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.296.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5f503592ae9fb3ae4f966a8fcdcde1b73338ef0dfd5e3f974e82ad0feabf1f28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9403675ba3ce4bb34a2eacfdc79412d2322fc1b742e46186d18ebcefed91a585"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0799fa24d9a2ecfe74b211e2e15f973454aa42168799311e878df99f7b5e2f8d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ab11a09ac299bdb63fff02cef4238b61dd169c3a2d76d10140aa60ac49ee001"
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

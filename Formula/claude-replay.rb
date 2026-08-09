class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "075e2215cf0b0d6042ef7b319c21e245a9eb918158c16a69fc3b6c2a9c7247a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f52eec263e52bb0b3faeef56e23991b8ad4930d3819f4394b51b2b4f7583533a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8e9e6285339532f8367b92cc8e957ede4c76d570d3449459d593e39565939db4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2445d8a4e99dcf640b470fed1abc218bd97c1bff90ffda87df71df325fe831cc"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end

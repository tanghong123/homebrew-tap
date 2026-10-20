class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.398.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "86b36783bebe692bed125709b84f5238b2fd92aa819fa7175462ab0f321ae8a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a9712eecaeb97bb8cc33741303563dba33a464f16ca71487759f51291554c694"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53fbc02b26d0d60cc4fb1f5520936b3284715b6e0c37ad3accb5efd8e9c9e13f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "348c2a4e24b948114242520203397c8b1272e2294b87d6cf3570d4e6e3ecf37a"
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

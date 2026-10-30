class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.451.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b133b73de01bdb1b0c1e003ec289b8014e860dce25a25935219b7079433f457e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d93676a7af45922a19083e3263f4d8d0adf74ce289c61aa88b9e3d74f80a0302"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13fea819fbd9e4675dbd69ff1b919e1620d4bc9ae93528ac98a9c976cfce2abb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0231ca287658e19679cd6cc4f947ff4a2347d2eda805da6479b31b1ad8e8f24"
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
